
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct throtl_rb_root {int dummy; } ;
struct throtl_grp {scalar_t__* nr_queued; int disptime; } ;
struct throtl_data {struct throtl_rb_root tg_service_tree; } ;
struct bio_list {int dummy; } ;


 int jiffies ;
 int tg_update_disptime (struct throtl_data*,struct throtl_grp*) ;
 int throtl_dequeue_tg (struct throtl_data*,struct throtl_grp*) ;
 scalar_t__ throtl_dispatch_tg (struct throtl_data*,struct throtl_grp*,struct bio_list*) ;
 int throtl_enqueue_tg (struct throtl_data*,struct throtl_grp*) ;
 unsigned int throtl_quantum ;
 struct throtl_grp* throtl_rb_first (struct throtl_rb_root*) ;
 scalar_t__ time_before (int ,int ) ;

__attribute__((used)) static int throtl_select_dispatch(struct throtl_data *td, struct bio_list *bl)
{
 unsigned int nr_disp = 0;
 struct throtl_grp *tg;
 struct throtl_rb_root *st = &td->tg_service_tree;

 while (1) {
  tg = throtl_rb_first(st);

  if (!tg)
   break;

  if (time_before(jiffies, tg->disptime))
   break;

  throtl_dequeue_tg(td, tg);

  nr_disp += throtl_dispatch_tg(td, tg, bl);

  if (tg->nr_queued[0] || tg->nr_queued[1]) {
   tg_update_disptime(td, tg);
   throtl_enqueue_tg(td, tg);
  }

  if (nr_disp >= throtl_quantum)
   break;
 }

 return nr_disp;
}
