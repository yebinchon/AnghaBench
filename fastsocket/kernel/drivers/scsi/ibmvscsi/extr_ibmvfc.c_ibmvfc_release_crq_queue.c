
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vio_dev {int unit_address; int irq; } ;
struct ibmvfc_crq_queue {scalar_t__ msgs; int msg_token; } ;
struct ibmvfc_host {int dev; scalar_t__ logged_in; int state; int tasklet; struct ibmvfc_crq_queue crq; } ;


 int DMA_BIDIRECTIONAL ;
 long H_BUSY ;
 int H_FREE_CRQ ;
 scalar_t__ H_IS_LONG_BUSY (long) ;
 int IBMVFC_NO_CRQ ;
 int PAGE_SIZE ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 int free_irq (int ,struct ibmvfc_host*) ;
 int free_page (unsigned long) ;
 int ibmvfc_dbg (struct ibmvfc_host*,char*) ;
 int msleep (int) ;
 long plpar_hcall_norets (int ,int ) ;
 int tasklet_kill (int *) ;
 struct vio_dev* to_vio_dev (int ) ;

__attribute__((used)) static void ibmvfc_release_crq_queue(struct ibmvfc_host *vhost)
{
 long rc = 0;
 struct vio_dev *vdev = to_vio_dev(vhost->dev);
 struct ibmvfc_crq_queue *crq = &vhost->crq;

 ibmvfc_dbg(vhost, "Releasing CRQ\n");
 free_irq(vdev->irq, vhost);
 tasklet_kill(&vhost->tasklet);
 do {
  if (rc)
   msleep(100);
  rc = plpar_hcall_norets(H_FREE_CRQ, vdev->unit_address);
 } while (rc == H_BUSY || H_IS_LONG_BUSY(rc));

 vhost->state = IBMVFC_NO_CRQ;
 vhost->logged_in = 0;
 dma_unmap_single(vhost->dev, crq->msg_token, PAGE_SIZE, DMA_BIDIRECTIONAL);
 free_page((unsigned long)crq->msgs);
}
