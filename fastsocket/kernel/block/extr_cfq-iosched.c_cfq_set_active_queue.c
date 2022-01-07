
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfq_queue {int dummy; } ;
struct cfq_data {int dummy; } ;


 int __cfq_set_active_queue (struct cfq_data*,struct cfq_queue*) ;
 struct cfq_queue* cfq_get_next_queue (struct cfq_data*) ;

__attribute__((used)) static struct cfq_queue *cfq_set_active_queue(struct cfq_data *cfqd,
           struct cfq_queue *cfqq)
{
 if (!cfqq)
  cfqq = cfq_get_next_queue(cfqd);

 __cfq_set_active_queue(cfqd, cfqq);
 return cfqq;
}
