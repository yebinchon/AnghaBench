
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iss_net_private {int lock; scalar_t__ timer_val; int timer; } ;


 int iss_net_poll () ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void iss_net_timer(unsigned long priv)
{
 struct iss_net_private* lp = (struct iss_net_private*) priv;

 spin_lock(&lp->lock);

 iss_net_poll();

 mod_timer(&lp->timer, jiffies + lp->timer_val);

 spin_unlock(&lp->lock);
}
