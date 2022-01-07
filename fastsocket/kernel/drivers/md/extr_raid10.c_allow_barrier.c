
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r10conf {int wait_barrier; int resync_lock; int nr_pending; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up (int *) ;

__attribute__((used)) static void allow_barrier(struct r10conf *conf)
{
 unsigned long flags;
 spin_lock_irqsave(&conf->resync_lock, flags);
 conf->nr_pending--;
 spin_unlock_irqrestore(&conf->resync_lock, flags);
 wake_up(&conf->wait_barrier);
}
