
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfq_queue {int new_cfqq; } ;
struct cfq_io_context {int dummy; } ;
struct cfq_data {int dummy; } ;


 int cfq_log_cfqq (struct cfq_data*,struct cfq_queue*,char*,int ) ;
 int cfq_mark_cfqq_coop (int ) ;
 int cfq_put_queue (struct cfq_queue*) ;
 int cic_set_cfqq (struct cfq_io_context*,int ,int) ;
 struct cfq_queue* cic_to_cfqq (struct cfq_io_context*,int) ;

__attribute__((used)) static struct cfq_queue *
cfq_merge_cfqqs(struct cfq_data *cfqd, struct cfq_io_context *cic,
  struct cfq_queue *cfqq)
{
 cfq_log_cfqq(cfqd, cfqq, "merging with queue %p", cfqq->new_cfqq);
 cic_set_cfqq(cic, cfqq->new_cfqq, 1);
 cfq_mark_cfqq_coop(cfqq->new_cfqq);
 cfq_put_queue(cfqq);
 return cic_to_cfqq(cic, 1);
}
