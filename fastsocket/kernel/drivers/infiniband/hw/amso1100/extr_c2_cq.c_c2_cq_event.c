
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct c2_dev {int dummy; } ;
struct TYPE_2__ {int cq_context; int (* comp_handler ) (TYPE_1__*,int ) ;} ;
struct c2_cq {TYPE_1__ ibcq; } ;


 struct c2_cq* c2_cq_get (struct c2_dev*,int ) ;
 int c2_cq_put (struct c2_cq*) ;
 int printk (char*,int ) ;
 int stub1 (TYPE_1__*,int ) ;

void c2_cq_event(struct c2_dev *c2dev, u32 mq_index)
{
 struct c2_cq *cq;

 cq = c2_cq_get(c2dev, mq_index);
 if (!cq) {
  printk("discarding events on destroyed CQN=%d\n", mq_index);
  return;
 }

 (*cq->ibcq.comp_handler) (&cq->ibcq, cq->ibcq.cq_context);
 c2_cq_put(cq);
}
