
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct throtl_grp {int dummy; } ;
struct throtl_data {int dummy; } ;


 int __throtl_dequeue_tg (struct throtl_data*,struct throtl_grp*) ;
 scalar_t__ throtl_tg_on_rr (struct throtl_grp*) ;

__attribute__((used)) static void throtl_dequeue_tg(struct throtl_data *td, struct throtl_grp *tg)
{
 if (throtl_tg_on_rr(tg))
  __throtl_dequeue_tg(td, tg);
}
