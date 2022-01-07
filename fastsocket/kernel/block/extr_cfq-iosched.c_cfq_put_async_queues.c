
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfq_data {scalar_t__ async_idle_cfqq; scalar_t__** async_cfqq; } ;


 int IOPRIO_BE_NR ;
 int cfq_put_queue (scalar_t__) ;

__attribute__((used)) static void cfq_put_async_queues(struct cfq_data *cfqd)
{
 int i;

 for (i = 0; i < IOPRIO_BE_NR; i++) {
  if (cfqd->async_cfqq[0][i])
   cfq_put_queue(cfqd->async_cfqq[0][i]);
  if (cfqd->async_cfqq[1][i])
   cfq_put_queue(cfqd->async_cfqq[1][i]);
 }

 if (cfqd->async_idle_cfqq)
  cfq_put_queue(cfqd->async_idle_cfqq);
}
