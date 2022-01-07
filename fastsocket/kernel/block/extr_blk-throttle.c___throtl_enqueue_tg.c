
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct throtl_rb_root {int count; } ;
struct throtl_grp {int dummy; } ;
struct throtl_data {struct throtl_rb_root tg_service_tree; } ;


 int tg_service_tree_add (struct throtl_rb_root*,struct throtl_grp*) ;
 int throtl_mark_tg_on_rr (struct throtl_grp*) ;

__attribute__((used)) static void __throtl_enqueue_tg(struct throtl_data *td, struct throtl_grp *tg)
{
 struct throtl_rb_root *st = &td->tg_service_tree;

 tg_service_tree_add(st, tg);
 throtl_mark_tg_on_rr(tg);
 st->count++;
}
