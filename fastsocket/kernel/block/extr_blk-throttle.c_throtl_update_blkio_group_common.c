
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct throtl_grp {int limits_changed; } ;
struct throtl_data {int limits_changed; } ;


 int throtl_schedule_delayed_work (struct throtl_data*,int ) ;
 int xchg (int *,int) ;

__attribute__((used)) static void throtl_update_blkio_group_common(struct throtl_data *td,
    struct throtl_grp *tg)
{
 int ret;

 ret = xchg(&tg->limits_changed, 1);
 ret = xchg(&td->limits_changed, 1);

 throtl_schedule_delayed_work(td, 0);
}
