
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_queue {void* sq_cmds; int sq_dma_addr; int q_depth; int q_dmadev; int cq_dma_addr; scalar_t__ cqes; int q_lock; int sq_cong; } ;
struct bio {int dummy; } ;


 int CQ_SIZE (int ) ;
 int EIO ;
 int SQ_SIZE (int ) ;
 int bio_endio (struct bio*,int ) ;
 scalar_t__ bio_list_peek (int *) ;
 struct bio* bio_list_pop (int *) ;
 int dma_free_coherent (int ,int ,void*,int ) ;
 int kfree (struct nvme_queue*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void nvme_free_queue(struct nvme_queue *nvmeq)
{
 spin_lock_irq(&nvmeq->q_lock);
 while (bio_list_peek(&nvmeq->sq_cong)) {
  struct bio *bio = bio_list_pop(&nvmeq->sq_cong);
  bio_endio(bio, -EIO);
 }
 spin_unlock_irq(&nvmeq->q_lock);

 dma_free_coherent(nvmeq->q_dmadev, CQ_SIZE(nvmeq->q_depth),
    (void *)nvmeq->cqes, nvmeq->cq_dma_addr);
 dma_free_coherent(nvmeq->q_dmadev, SQ_SIZE(nvmeq->q_depth),
     nvmeq->sq_cmds, nvmeq->sq_dma_addr);
 kfree(nvmeq);
}
