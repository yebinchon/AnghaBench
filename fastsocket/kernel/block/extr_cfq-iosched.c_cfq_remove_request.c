
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request {int cmd_flags; int queuelist; } ;
struct cfq_queue {int meta_pending; TYPE_1__* cfqd; struct request* next_rq; } ;
struct TYPE_4__ {int blkg; } ;
struct TYPE_3__ {int rq_queued; } ;


 int REQ_META ;
 TYPE_2__* RQ_CFQG (struct request*) ;
 struct cfq_queue* RQ_CFQQ (struct request*) ;
 int WARN_ON (int) ;
 int cfq_blkiocg_update_io_remove_stats (int *,int ,int ) ;
 int cfq_del_rq_rb (struct request*) ;
 struct request* cfq_find_next_rq (TYPE_1__*,struct cfq_queue*,struct request*) ;
 int list_del_init (int *) ;
 int rq_data_dir (struct request*) ;
 int rq_is_sync (struct request*) ;

__attribute__((used)) static void cfq_remove_request(struct request *rq)
{
 struct cfq_queue *cfqq = RQ_CFQQ(rq);

 if (cfqq->next_rq == rq)
  cfqq->next_rq = cfq_find_next_rq(cfqq->cfqd, cfqq, rq);

 list_del_init(&rq->queuelist);
 cfq_del_rq_rb(rq);

 cfqq->cfqd->rq_queued--;
 cfq_blkiocg_update_io_remove_stats(&(RQ_CFQG(rq))->blkg,
     rq_data_dir(rq), rq_is_sync(rq));
 if (rq->cmd_flags & REQ_META) {
  WARN_ON(!cfqq->meta_pending);
  cfqq->meta_pending--;
 }
}
