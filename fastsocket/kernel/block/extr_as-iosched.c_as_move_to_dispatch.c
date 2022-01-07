
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {int rb_node; } ;
struct io_context {TYPE_1__* aic; } ;
struct as_data {scalar_t__ current_write_count; int nr_dispatched; int q; int * next_rq; scalar_t__ ioc_finished; int * io_context; scalar_t__* last_sector; int antic_status; } ;
struct TYPE_2__ {int nr_dispatched; } ;


 int ANTIC_OFF ;
 int AS_RQ_DISPATCHED ;
 scalar_t__ AS_RQ_QUEUED ;
 int const BLK_RW_SYNC ;
 int BUG_ON (int ) ;
 int RB_EMPTY_NODE (int *) ;
 struct io_context* RQ_IOC (struct request*) ;
 int RQ_SET_STATE (struct request*,int ) ;
 scalar_t__ RQ_STATE (struct request*) ;
 int WARN_ON (int) ;
 int as_antic_stop (struct as_data*) ;
 int as_find_next_rq (struct as_data*,struct request*) ;
 int as_remove_queued_request (int ,struct request*) ;
 int atomic_inc (int *) ;
 scalar_t__ blk_rq_pos (struct request*) ;
 scalar_t__ blk_rq_sectors (struct request*) ;
 int copy_io_context (int **,struct io_context**) ;
 int elv_dispatch_sort (int ,struct request*) ;
 int put_io_context (int *) ;
 int rq_is_sync (struct request*) ;

__attribute__((used)) static void as_move_to_dispatch(struct as_data *ad, struct request *rq)
{
 const int data_dir = rq_is_sync(rq);

 BUG_ON(RB_EMPTY_NODE(&rq->rb_node));

 as_antic_stop(ad);
 ad->antic_status = ANTIC_OFF;





 ad->last_sector[data_dir] = blk_rq_pos(rq) + blk_rq_sectors(rq);

 if (data_dir == BLK_RW_SYNC) {
  struct io_context *ioc = RQ_IOC(rq);

  copy_io_context(&ad->io_context, &ioc);
 } else {
  if (ad->io_context) {
   put_io_context(ad->io_context);
   ad->io_context = ((void*)0);
  }

  if (ad->current_write_count != 0)
   ad->current_write_count--;
 }
 ad->ioc_finished = 0;

 ad->next_rq[data_dir] = as_find_next_rq(ad, rq);




 as_remove_queued_request(ad->q, rq);
 WARN_ON(RQ_STATE(rq) != AS_RQ_QUEUED);

 elv_dispatch_sort(ad->q, rq);

 RQ_SET_STATE(rq, AS_RQ_DISPATCHED);
 if (RQ_IOC(rq) && RQ_IOC(rq)->aic)
  atomic_inc(&RQ_IOC(rq)->aic->nr_dispatched);
 ad->nr_dispatched++;
}
