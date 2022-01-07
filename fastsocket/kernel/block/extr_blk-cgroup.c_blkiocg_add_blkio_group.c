
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct blkio_group {int plid; int dev; int path; int blkcg_node; int blkcg_id; int key; int stats_lock; } ;
struct TYPE_2__ {int cgroup; } ;
struct blkio_cgroup {TYPE_1__ css; int lock; int blkg_list; } ;
typedef enum blkio_policy_id { ____Placeholder_blkio_policy_id } blkio_policy_id ;
typedef int dev_t ;


 int cgroup_path (int ,int ,int) ;
 int css_id (TYPE_1__*) ;
 int hlist_add_head_rcu (int *,int *) ;
 int rcu_assign_pointer (int ,void*) ;
 int spin_lock_init (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void blkiocg_add_blkio_group(struct blkio_cgroup *blkcg,
  struct blkio_group *blkg, void *key, dev_t dev,
  enum blkio_policy_id plid)
{
 unsigned long flags;

 spin_lock_irqsave(&blkcg->lock, flags);
 spin_lock_init(&blkg->stats_lock);
 rcu_assign_pointer(blkg->key, key);
 blkg->blkcg_id = css_id(&blkcg->css);
 hlist_add_head_rcu(&blkg->blkcg_node, &blkcg->blkg_list);
 blkg->plid = plid;
 spin_unlock_irqrestore(&blkcg->lock, flags);

 cgroup_path(blkcg->css.cgroup, blkg->path, sizeof(blkg->path));
 blkg->dev = dev;
}
