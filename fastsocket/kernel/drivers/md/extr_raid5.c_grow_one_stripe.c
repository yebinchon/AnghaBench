
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stripe_head {int lru; int count; int stripe_lock; int lock; struct r5conf* raid_conf; } ;
struct r5conf {int active_stripes; int slab_cache; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int atomic_inc (int *) ;
 int atomic_set (int *,int) ;
 scalar_t__ grow_buffers (struct stripe_head*) ;
 int kmem_cache_free (int ,struct stripe_head*) ;
 struct stripe_head* kmem_cache_zalloc (int ,int ) ;
 int release_stripe (struct stripe_head*) ;
 int shrink_buffers (struct stripe_head*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int grow_one_stripe(struct r5conf *conf)
{
 struct stripe_head *sh;
 sh = kmem_cache_zalloc(conf->slab_cache, GFP_KERNEL);
 if (!sh)
  return 0;

 sh->raid_conf = conf;

 spin_lock_init(&sh->lock);
 spin_lock_init(&sh->stripe_lock);

 if (grow_buffers(sh)) {
  shrink_buffers(sh);
  kmem_cache_free(conf->slab_cache, sh);
  return 0;
 }

 atomic_set(&sh->count, 1);
 atomic_inc(&conf->active_stripes);
 INIT_LIST_HEAD(&sh->lru);
 release_stripe(sh);
 return 1;
}
