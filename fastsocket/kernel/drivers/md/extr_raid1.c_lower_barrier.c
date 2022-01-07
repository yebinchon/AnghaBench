
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r1conf {scalar_t__ barrier; int wait_barrier; int resync_lock; } ;


 int BUG_ON (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up (int *) ;

__attribute__((used)) static void lower_barrier(struct r1conf *conf)
{
 unsigned long flags;
 BUG_ON(conf->barrier <= 0);
 spin_lock_irqsave(&conf->resync_lock, flags);
 conf->barrier--;
 spin_unlock_irqrestore(&conf->resync_lock, flags);
 wake_up(&conf->wait_barrier);
}
