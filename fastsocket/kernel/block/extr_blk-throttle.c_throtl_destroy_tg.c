
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct throtl_grp {int tg_node; } ;
struct throtl_data {int nr_undestroyed_grps; } ;


 int BUG_ON (int ) ;
 int hlist_del_init (int *) ;
 int hlist_unhashed (int *) ;
 int throtl_put_tg (struct throtl_grp*) ;

__attribute__((used)) static void
throtl_destroy_tg(struct throtl_data *td, struct throtl_grp *tg)
{

 BUG_ON(hlist_unhashed(&tg->tg_node));

 hlist_del_init(&tg->tg_node);





 throtl_put_tg(tg);
 td->nr_undestroyed_grps--;
}
