
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cfq_queue {int ioprio; TYPE_1__* cfqg; } ;
struct cfq_data {int dummy; } ;
struct TYPE_2__ {int nr_cfqq; } ;


 int cfq_cfqq_sync (struct cfq_queue*) ;
 int cfq_prio_slice (struct cfq_data*,int,int ) ;

__attribute__((used)) static unsigned long cfq_slice_offset(struct cfq_data *cfqd,
          struct cfq_queue *cfqq)
{



 return (cfqq->cfqg->nr_cfqq - 1) * (cfq_prio_slice(cfqd, 1, 0) -
         cfq_prio_slice(cfqd, cfq_cfqq_sync(cfqq), cfqq->ioprio));
}
