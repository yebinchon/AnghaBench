
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct request {int dummy; } ;
struct cfq_queue {TYPE_2__* cfqd; int * queued; int sort_list; } ;
struct TYPE_6__ {int blkg; } ;
struct TYPE_5__ {TYPE_1__* serving_group; } ;
struct TYPE_4__ {int blkg; } ;


 TYPE_3__* RQ_CFQG (struct request*) ;
 int cfq_add_rq_rb (struct request*) ;
 int cfq_blkiocg_update_io_add_stats (int *,int *,int ,size_t) ;
 int cfq_blkiocg_update_io_remove_stats (int *,int ,size_t) ;
 int elv_rb_del (int *,struct request*) ;
 int rq_data_dir (struct request*) ;
 size_t rq_is_sync (struct request*) ;

__attribute__((used)) static void cfq_reposition_rq_rb(struct cfq_queue *cfqq, struct request *rq)
{
 elv_rb_del(&cfqq->sort_list, rq);
 cfqq->queued[rq_is_sync(rq)]--;
 cfq_blkiocg_update_io_remove_stats(&(RQ_CFQG(rq))->blkg,
     rq_data_dir(rq), rq_is_sync(rq));
 cfq_add_rq_rb(rq);
 cfq_blkiocg_update_io_add_stats(&(RQ_CFQG(rq))->blkg,
   &cfqq->cfqd->serving_group->blkg, rq_data_dir(rq),
   rq_is_sync(rq));
}
