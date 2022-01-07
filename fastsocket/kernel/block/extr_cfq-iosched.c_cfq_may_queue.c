
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int io_context; } ;
struct request_queue {TYPE_1__* elevator; } ;
struct cfq_queue {int dummy; } ;
struct cfq_io_context {int ioc; } ;
struct cfq_data {int dummy; } ;
struct TYPE_2__ {struct cfq_data* elevator_data; } ;


 int ELV_MQUEUE_MAY ;
 int __cfq_may_queue (struct cfq_queue*) ;
 struct cfq_io_context* cfq_cic_lookup (struct cfq_data*,int ) ;
 int cfq_init_prio_data (struct cfq_queue*,int ) ;
 int cfq_prio_boost (struct cfq_queue*) ;
 struct cfq_queue* cic_to_cfqq (struct cfq_io_context*,int ) ;
 struct task_struct* current ;
 int rw_is_sync (int) ;

__attribute__((used)) static int cfq_may_queue(struct request_queue *q, int rw)
{
 struct cfq_data *cfqd = q->elevator->elevator_data;
 struct task_struct *tsk = current;
 struct cfq_io_context *cic;
 struct cfq_queue *cfqq;







 cic = cfq_cic_lookup(cfqd, tsk->io_context);
 if (!cic)
  return ELV_MQUEUE_MAY;

 cfqq = cic_to_cfqq(cic, rw_is_sync(rw));
 if (cfqq) {
  cfq_init_prio_data(cfqq, cic->ioc);
  cfq_prio_boost(cfqq);

  return __cfq_may_queue(cfqq);
 }

 return ELV_MQUEUE_MAY;
}
