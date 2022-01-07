
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u16 ;
struct nvme_queue {size_t cq_head; size_t cq_phase; int sq_head; size_t q_depth; int cqe_seen; TYPE_1__* dev; scalar_t__ q_db; struct nvme_completion* cqes; } ;
struct nvme_completion {int command_id; int sq_head; int status; } ;
typedef int (* nvme_completion_fn ) (TYPE_1__*,void*,struct nvme_completion*) ;
struct TYPE_3__ {int db_stride; } ;


 void* free_cmdid (struct nvme_queue*,int ,int (*) (TYPE_1__*,void*,struct nvme_completion*)) ;
 int le16_to_cpu (int ) ;
 int writel (size_t,scalar_t__) ;

__attribute__((used)) static int nvme_process_cq(struct nvme_queue *nvmeq)
{
 u16 head, phase;

 head = nvmeq->cq_head;
 phase = nvmeq->cq_phase;

 for (;;) {
  void *ctx;
  nvme_completion_fn fn;
  struct nvme_completion cqe = nvmeq->cqes[head];
  if ((le16_to_cpu(cqe.status) & 1) != phase)
   break;
  nvmeq->sq_head = le16_to_cpu(cqe.sq_head);
  if (++head == nvmeq->q_depth) {
   head = 0;
   phase = !phase;
  }

  ctx = free_cmdid(nvmeq, cqe.command_id, &fn);
  fn(nvmeq->dev, ctx, &cqe);
 }







 if (head == nvmeq->cq_head && phase == nvmeq->cq_phase)
  return 0;

 writel(head, nvmeq->q_db + (1 << nvmeq->dev->db_stride));
 nvmeq->cq_head = head;
 nvmeq->cq_phase = phase;

 nvmeq->cqe_seen = 1;
 return 1;
}
