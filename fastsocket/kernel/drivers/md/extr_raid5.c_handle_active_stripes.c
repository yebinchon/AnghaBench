
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stripe_head {int dummy; } ;
struct r5conf {int device_lock; } ;


 int MAX_STRIPE_BATCH ;
 struct stripe_head* __get_priority_stripe (struct r5conf*) ;
 int __release_stripe (struct r5conf*,struct stripe_head*) ;
 int cond_resched () ;
 int handle_stripe (struct stripe_head*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int handle_active_stripes(struct r5conf *conf)
{
 struct stripe_head *batch[MAX_STRIPE_BATCH], *sh;
 int i, batch_size = 0;

 while (batch_size < MAX_STRIPE_BATCH &&
   (sh = __get_priority_stripe(conf)) != ((void*)0))
  batch[batch_size++] = sh;

 if (batch_size == 0)
  return batch_size;
 spin_unlock_irq(&conf->device_lock);

 for (i = 0; i < batch_size; i++)
  handle_stripe(batch[i]);

 cond_resched();

 spin_lock_irq(&conf->device_lock);
 for (i = 0; i < batch_size; i++)
  __release_stripe(conf, batch[i]);
 return batch_size;
}
