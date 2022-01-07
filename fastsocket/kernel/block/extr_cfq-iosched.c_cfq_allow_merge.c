
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request_queue {TYPE_1__* elevator; } ;
struct request {int dummy; } ;
struct cfq_queue {int dummy; } ;
struct cfq_io_context {int dummy; } ;
struct cfq_data {int dummy; } ;
struct bio {int dummy; } ;
struct TYPE_4__ {int io_context; } ;
struct TYPE_3__ {struct cfq_data* elevator_data; } ;


 struct cfq_queue* RQ_CFQQ (struct request*) ;
 scalar_t__ cfq_bio_sync (struct bio*) ;
 struct cfq_io_context* cfq_cic_lookup (struct cfq_data*,int ) ;
 struct cfq_queue* cic_to_cfqq (struct cfq_io_context*,scalar_t__) ;
 TYPE_2__* current ;
 int rq_is_sync (struct request*) ;

__attribute__((used)) static int cfq_allow_merge(struct request_queue *q, struct request *rq,
      struct bio *bio)
{
 struct cfq_data *cfqd = q->elevator->elevator_data;
 struct cfq_io_context *cic;
 struct cfq_queue *cfqq;




 if (cfq_bio_sync(bio) && !rq_is_sync(rq))
  return 0;





 cic = cfq_cic_lookup(cfqd, current->io_context);
 if (!cic)
  return 0;

 cfqq = cic_to_cfqq(cic, cfq_bio_sync(bio));
 return cfqq == RQ_CFQQ(rq);
}
