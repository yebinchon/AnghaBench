
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup_subsys_state {int dummy; } ;
struct cgroup_subsys {int dummy; } ;
struct cgroup {struct cgroup* parent; } ;
struct blkio_cgroup {struct cgroup_subsys_state css; int policy_list; int blkg_list; int lock; int weight; } ;


 int BLKIO_WEIGHT_DEFAULT ;
 int ENOMEM ;
 struct cgroup_subsys_state* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_HLIST_HEAD (int *) ;
 int INIT_LIST_HEAD (int *) ;
 struct blkio_cgroup blkio_root_cgroup ;
 struct blkio_cgroup* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct cgroup_subsys_state *
blkiocg_create(struct cgroup_subsys *subsys, struct cgroup *cgroup)
{
 struct blkio_cgroup *blkcg;
 struct cgroup *parent = cgroup->parent;

 if (!parent) {
  blkcg = &blkio_root_cgroup;
  goto done;
 }

 blkcg = kzalloc(sizeof(*blkcg), GFP_KERNEL);
 if (!blkcg)
  return ERR_PTR(-ENOMEM);

 blkcg->weight = BLKIO_WEIGHT_DEFAULT;
done:
 spin_lock_init(&blkcg->lock);
 INIT_HLIST_HEAD(&blkcg->blkg_list);

 INIT_LIST_HEAD(&blkcg->policy_list);
 return &blkcg->css;
}
