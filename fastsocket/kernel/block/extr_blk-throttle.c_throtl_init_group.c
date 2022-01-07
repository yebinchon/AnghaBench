
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct throtl_grp {int limits_changed; int* bps; int* iops; int ref; int * bio_lists; int rb_node; int tg_node; } ;


 int INIT_HLIST_NODE (int *) ;
 int RB_CLEAR_NODE (int *) ;
 int atomic_set (int *,int) ;
 int bio_list_init (int *) ;

__attribute__((used)) static void throtl_init_group(struct throtl_grp *tg)
{
 INIT_HLIST_NODE(&tg->tg_node);
 RB_CLEAR_NODE(&tg->rb_node);
 bio_list_init(&tg->bio_lists[0]);
 bio_list_init(&tg->bio_lists[1]);
 tg->limits_changed = 0;


 tg->bps[0] = tg->bps[1] = -1;
 tg->iops[0] = tg->iops[1] = -1;







 atomic_set(&tg->ref, 1);
}
