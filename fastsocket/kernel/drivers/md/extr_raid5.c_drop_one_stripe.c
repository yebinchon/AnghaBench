
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stripe_head {int count; } ;
struct r5conf {int active_stripes; int slab_cache; int device_lock; } ;


 int BUG_ON (int ) ;
 int atomic_dec (int *) ;
 int atomic_read (int *) ;
 struct stripe_head* get_free_stripe (struct r5conf*) ;
 int kmem_cache_free (int ,struct stripe_head*) ;
 int shrink_buffers (struct stripe_head*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int drop_one_stripe(struct r5conf *conf)
{
 struct stripe_head *sh;

 spin_lock_irq(&conf->device_lock);
 sh = get_free_stripe(conf);
 spin_unlock_irq(&conf->device_lock);
 if (!sh)
  return 0;
 BUG_ON(atomic_read(&sh->count));
 shrink_buffers(sh);
 kmem_cache_free(conf->slab_cache, sh);
 atomic_dec(&conf->active_stripes);
 return 1;
}
