
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cfq_queue {int pid; } ;
struct cfq_io_context {int dummy; } ;
struct TYPE_2__ {int pid; } ;


 int cfq_clear_cfqq_coop (struct cfq_queue*) ;
 int cfq_clear_cfqq_split_coop (struct cfq_queue*) ;
 int cfq_put_queue (struct cfq_queue*) ;
 int cfqq_process_refs (struct cfq_queue*) ;
 int cic_set_cfqq (struct cfq_io_context*,int *,int) ;
 TYPE_1__* current ;

__attribute__((used)) static struct cfq_queue *
split_cfqq(struct cfq_io_context *cic, struct cfq_queue *cfqq)
{
 if (cfqq_process_refs(cfqq) == 1) {
  cfqq->pid = current->pid;
  cfq_clear_cfqq_coop(cfqq);
  cfq_clear_cfqq_split_coop(cfqq);
  return cfqq;
 }

 cic_set_cfqq(cic, ((void*)0), 1);
 cfq_put_queue(cfqq);
 return ((void*)0);
}
