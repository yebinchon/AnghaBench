
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blkio_group {scalar_t__ blkcg_id; int blkcg_node; } ;


 int hlist_del_init_rcu (int *) ;

__attribute__((used)) static void __blkiocg_del_blkio_group(struct blkio_group *blkg)
{
 hlist_del_init_rcu(&blkg->blkcg_node);
 blkg->blkcg_id = 0;
}
