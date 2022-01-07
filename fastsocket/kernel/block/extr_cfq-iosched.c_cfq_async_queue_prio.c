
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfq_queue {int dummy; } ;
struct cfq_data {struct cfq_queue* async_idle_cfqq; struct cfq_queue*** async_cfqq; } ;


 int BUG () ;




__attribute__((used)) static struct cfq_queue **
cfq_async_queue_prio(struct cfq_data *cfqd, int ioprio_class, int ioprio)
{
 switch (ioprio_class) {
 case 128:
  return &cfqd->async_cfqq[0][ioprio];
 case 130:
  return &cfqd->async_cfqq[1][ioprio];
 case 129:
  return &cfqd->async_idle_cfqq;
 default:
  BUG();
 }
}
