
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvme_queue {int cq_phase; int q_depth; int cq_vector; int q_suspended; int cq_dma_addr; void* cqes; int * q_db; int sq_cong; int sq_cong_wait; int sq_full; scalar_t__ cq_head; int q_lock; struct nvme_dev* dev; struct device* q_dmadev; void* sq_cmds; int sq_dma_addr; } ;
struct nvme_dev {int db_stride; int queue_count; int * dbs; TYPE_1__* pci_dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int CQ_SIZE (int) ;
 int GFP_KERNEL ;
 int SQ_SIZE (int) ;
 int bio_list_init (int *) ;
 void* dma_alloc_coherent (struct device*,int ,int *,int ) ;
 int dma_free_coherent (struct device*,int ,void*,int ) ;
 int init_waitqueue_entry (int *,int ) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct nvme_queue*) ;
 struct nvme_queue* kzalloc (int,int ) ;
 int memset (void*,int ,int ) ;
 unsigned int nvme_queue_extra (int) ;
 int nvme_thread ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct nvme_queue *nvme_alloc_queue(struct nvme_dev *dev, int qid,
       int depth, int vector)
{
 struct device *dmadev = &dev->pci_dev->dev;
 unsigned extra = nvme_queue_extra(depth);
 struct nvme_queue *nvmeq = kzalloc(sizeof(*nvmeq) + extra, GFP_KERNEL);
 if (!nvmeq)
  return ((void*)0);

 nvmeq->cqes = dma_alloc_coherent(dmadev, CQ_SIZE(depth),
     &nvmeq->cq_dma_addr, GFP_KERNEL);
 if (!nvmeq->cqes)
  goto free_nvmeq;
 memset((void *)nvmeq->cqes, 0, CQ_SIZE(depth));

 nvmeq->sq_cmds = dma_alloc_coherent(dmadev, SQ_SIZE(depth),
     &nvmeq->sq_dma_addr, GFP_KERNEL);
 if (!nvmeq->sq_cmds)
  goto free_cqdma;

 nvmeq->q_dmadev = dmadev;
 nvmeq->dev = dev;
 spin_lock_init(&nvmeq->q_lock);
 nvmeq->cq_head = 0;
 nvmeq->cq_phase = 1;
 init_waitqueue_head(&nvmeq->sq_full);
 init_waitqueue_entry(&nvmeq->sq_cong_wait, nvme_thread);
 bio_list_init(&nvmeq->sq_cong);
 nvmeq->q_db = &dev->dbs[qid << (dev->db_stride + 1)];
 nvmeq->q_depth = depth;
 nvmeq->cq_vector = vector;
 nvmeq->q_suspended = 1;
 dev->queue_count++;

 return nvmeq;

 free_cqdma:
 dma_free_coherent(dmadev, CQ_SIZE(depth), (void *)nvmeq->cqes,
       nvmeq->cq_dma_addr);
 free_nvmeq:
 kfree(nvmeq);
 return ((void*)0);
}
