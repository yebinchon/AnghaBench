
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct throtl_grp {int tg_node; } ;
struct throtl_data {int nr_undestroyed_grps; int tg_list; } ;


 int hlist_add_head (int *,int *) ;

__attribute__((used)) static void
throtl_add_group_to_td_list(struct throtl_data *td, struct throtl_grp *tg)
{
 hlist_add_head(&tg->tg_node, &td->tg_list);
 td->nr_undestroyed_grps++;
}
