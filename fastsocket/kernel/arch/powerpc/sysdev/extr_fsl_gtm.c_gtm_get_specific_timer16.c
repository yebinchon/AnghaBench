
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gtm_timer {int requested; } ;
struct gtm {int lock; struct gtm_timer* timers; } ;


 int EBUSY ;
 int EINVAL ;
 struct gtm_timer* ERR_PTR (int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

struct gtm_timer *gtm_get_specific_timer16(struct gtm *gtm,
        unsigned int timer)
{
 struct gtm_timer *ret = ERR_PTR(-EBUSY);

 if (timer > 3)
  return ERR_PTR(-EINVAL);

 spin_lock_irq(&gtm->lock);

 if (gtm->timers[timer].requested)
  goto out;

 ret = &gtm->timers[timer];
 ret->requested = 1;

out:
 spin_unlock_irq(&gtm->lock);
 return ret;
}
