
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct viosrp_crq {int dummy; } ;
struct vio_dev {int irq; int unit_address; } ;
struct ibmvscsi_host_data {int dev; int srp_task; } ;
struct crq_queue {int size; struct viosrp_crq* msgs; int msg_token; int lock; scalar_t__ cur; } ;


 int DMA_BIDIRECTIONAL ;
 int GFP_KERNEL ;
 int H_BUSY ;
 int H_FREE_CRQ ;
 scalar_t__ H_IS_LONG_BUSY (int) ;
 int H_REG_CRQ ;
 int H_RESOURCE ;
 int PAGE_SIZE ;
 int dev_err (int ,char*,int) ;
 int dev_warn (int ,char*,...) ;
 int dma_map_single (int ,struct viosrp_crq*,int,int ) ;
 scalar_t__ dma_mapping_error (int ,int ) ;
 int dma_unmap_single (int ,int ,int,int ) ;
 int free_page (unsigned long) ;
 int gather_partition_info () ;
 scalar_t__ get_zeroed_page (int ) ;
 int msleep (int) ;
 int plpar_hcall_norets (int ,int ,...) ;
 scalar_t__ request_irq (int,int ,int ,char*,void*) ;
 int rpavscsi_handle_event ;
 int rpavscsi_reset_crq_queue (struct crq_queue*,struct ibmvscsi_host_data*) ;
 scalar_t__ rpavscsi_task ;
 int set_adapter_info (struct ibmvscsi_host_data*) ;
 int spin_lock_init (int *) ;
 int tasklet_init (int *,void*,unsigned long) ;
 int tasklet_kill (int *) ;
 struct vio_dev* to_vio_dev (int ) ;
 int vio_enable_interrupts (struct vio_dev*) ;

__attribute__((used)) static int rpavscsi_init_crq_queue(struct crq_queue *queue,
       struct ibmvscsi_host_data *hostdata,
       int max_requests)
{
 int rc;
 int retrc;
 struct vio_dev *vdev = to_vio_dev(hostdata->dev);

 queue->msgs = (struct viosrp_crq *)get_zeroed_page(GFP_KERNEL);

 if (!queue->msgs)
  goto malloc_failed;
 queue->size = PAGE_SIZE / sizeof(*queue->msgs);

 queue->msg_token = dma_map_single(hostdata->dev, queue->msgs,
       queue->size * sizeof(*queue->msgs),
       DMA_BIDIRECTIONAL);

 if (dma_mapping_error(hostdata->dev, queue->msg_token))
  goto map_failed;

 gather_partition_info();
 set_adapter_info(hostdata);

 retrc = rc = plpar_hcall_norets(H_REG_CRQ,
    vdev->unit_address,
    queue->msg_token, PAGE_SIZE);
 if (rc == H_RESOURCE)

  rc = rpavscsi_reset_crq_queue(queue,
           hostdata);

 if (rc == 2) {

  dev_warn(hostdata->dev, "Partner adapter not ready\n");
  retrc = 0;
 } else if (rc != 0) {
  dev_warn(hostdata->dev, "Error %d opening adapter\n", rc);
  goto reg_crq_failed;
 }

 queue->cur = 0;
 spin_lock_init(&queue->lock);

 tasklet_init(&hostdata->srp_task, (void *)rpavscsi_task,
       (unsigned long)hostdata);

 if (request_irq(vdev->irq,
   rpavscsi_handle_event,
   0, "ibmvscsi", (void *)hostdata) != 0) {
  dev_err(hostdata->dev, "couldn't register irq 0x%x\n",
   vdev->irq);
  goto req_irq_failed;
 }

 rc = vio_enable_interrupts(vdev);
 if (rc != 0) {
  dev_err(hostdata->dev, "Error %d enabling interrupts!!!\n", rc);
  goto req_irq_failed;
 }

 return retrc;

      req_irq_failed:
 tasklet_kill(&hostdata->srp_task);
 rc = 0;
 do {
  if (rc)
   msleep(100);
  rc = plpar_hcall_norets(H_FREE_CRQ, vdev->unit_address);
 } while ((rc == H_BUSY) || (H_IS_LONG_BUSY(rc)));
      reg_crq_failed:
 dma_unmap_single(hostdata->dev,
    queue->msg_token,
    queue->size * sizeof(*queue->msgs), DMA_BIDIRECTIONAL);
      map_failed:
 free_page((unsigned long)queue->msgs);
      malloc_failed:
 return -1;
}
