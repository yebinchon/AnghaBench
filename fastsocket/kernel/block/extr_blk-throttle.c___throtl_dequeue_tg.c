
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct throtl_grp {int rb_node; } ;
struct throtl_data {int tg_service_tree; } ;


 int throtl_clear_tg_on_rr (struct throtl_grp*) ;
 int throtl_rb_erase (int *,int *) ;

__attribute__((used)) static void __throtl_dequeue_tg(struct throtl_data *td, struct throtl_grp *tg)
{
 throtl_rb_erase(&tg->rb_node, &td->tg_service_tree);
 throtl_clear_tg_on_rr(tg);
}
