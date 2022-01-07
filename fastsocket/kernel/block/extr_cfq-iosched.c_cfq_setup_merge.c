
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfq_queue {int ref; struct cfq_queue* new_cfqq; } ;


 int cfqq_process_refs (struct cfq_queue*) ;

__attribute__((used)) static void cfq_setup_merge(struct cfq_queue *cfqq, struct cfq_queue *new_cfqq)
{
 int process_refs, new_process_refs;
 struct cfq_queue *__cfqq;







 if (!cfqq_process_refs(new_cfqq))
  return;


 while ((__cfqq = new_cfqq->new_cfqq)) {
  if (__cfqq == cfqq)
   return;
  new_cfqq = __cfqq;
 }

 process_refs = cfqq_process_refs(cfqq);
 new_process_refs = cfqq_process_refs(new_cfqq);




 if (process_refs == 0 || new_process_refs == 0)
  return;




 if (new_process_refs >= process_refs) {
  cfqq->new_cfqq = new_cfqq;
  new_cfqq->ref += process_refs;
 } else {
  new_cfqq->new_cfqq = cfqq;
  cfqq->ref += new_process_refs;
 }
}
