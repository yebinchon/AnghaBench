
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stripe_head {int count; struct r5conf* raid_conf; } ;
struct r5conf {int device_lock; } ;


 scalar_t__ atomic_dec_and_lock (int *,int *) ;
 int do_release_stripe (struct r5conf*,struct stripe_head*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void release_stripe(struct stripe_head *sh)
{
 struct r5conf *conf = sh->raid_conf;
 unsigned long flags;

 local_irq_save(flags);
 if (atomic_dec_and_lock(&sh->count, &conf->device_lock)) {
  do_release_stripe(conf, sh);
  spin_unlock(&conf->device_lock);
 }
 local_irq_restore(flags);
}
