
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct viosrp_crq {int dummy; } ;
struct vio_port {TYPE_1__* dma_dev; } ;
struct srp_target {int dev; } ;
struct crq_queue {int size; struct viosrp_crq* msgs; int msg_token; int lock; scalar_t__ cur; } ;
struct TYPE_2__ {int unit_address; int irq; } ;


 int DMA_BIDIRECTIONAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int H_BUSY ;
 scalar_t__ H_IS_LONG_BUSY (int) ;
 int H_RESOURCE ;
 int H_SUCCESS ;
 int IRQF_DISABLED ;
 int PAGE_SIZE ;
 int dma_map_single (int ,struct viosrp_crq*,int,int ) ;
 scalar_t__ dma_mapping_error (int ,int ) ;
 int dma_unmap_single (int ,int ,int,int ) ;
 int eprintk (char*,int) ;
 int free_page (unsigned long) ;
 scalar_t__ get_zeroed_page (int ) ;
 int h_free_crq (int ) ;
 int h_reg_crq (int ,int ,int) ;
 int h_send_crq (int ,int,int ) ;
 int ibmvstgt_interrupt ;
 int request_irq (int ,int *,int ,char*,struct srp_target*) ;
 int spin_lock_init (int *) ;
 struct vio_port* target_to_port (struct srp_target*) ;
 int vio_enable_interrupts (TYPE_1__*) ;

__attribute__((used)) static int crq_queue_create(struct crq_queue *queue, struct srp_target *target)
{
 int err;
 struct vio_port *vport = target_to_port(target);

 queue->msgs = (struct viosrp_crq *) get_zeroed_page(GFP_KERNEL);
 if (!queue->msgs)
  goto malloc_failed;
 queue->size = PAGE_SIZE / sizeof(*queue->msgs);

 queue->msg_token = dma_map_single(target->dev, queue->msgs,
       queue->size * sizeof(*queue->msgs),
       DMA_BIDIRECTIONAL);

 if (dma_mapping_error(target->dev, queue->msg_token))
  goto map_failed;

 err = h_reg_crq(vport->dma_dev->unit_address, queue->msg_token,
   PAGE_SIZE);




 if (err == H_RESOURCE) {
     do {
  err = h_free_crq(vport->dma_dev->unit_address);
     } while (err == H_BUSY || H_IS_LONG_BUSY(err));

     err = h_reg_crq(vport->dma_dev->unit_address, queue->msg_token,
       PAGE_SIZE);
 }

 if (err != H_SUCCESS && err != 2) {
  eprintk("Error 0x%x opening virtual adapter\n", err);
  goto reg_crq_failed;
 }

 err = request_irq(vport->dma_dev->irq, &ibmvstgt_interrupt,
     IRQF_DISABLED, "ibmvstgt", target);
 if (err)
  goto req_irq_failed;

 vio_enable_interrupts(vport->dma_dev);

 h_send_crq(vport->dma_dev->unit_address, 0xC001000000000000, 0);

 queue->cur = 0;
 spin_lock_init(&queue->lock);

 return 0;

req_irq_failed:
 do {
  err = h_free_crq(vport->dma_dev->unit_address);
 } while (err == H_BUSY || H_IS_LONG_BUSY(err));

reg_crq_failed:
 dma_unmap_single(target->dev, queue->msg_token,
    queue->size * sizeof(*queue->msgs), DMA_BIDIRECTIONAL);
map_failed:
 free_page((unsigned long) queue->msgs);

malloc_failed:
 return -ENOMEM;
}
