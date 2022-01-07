
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r10conf {int resync_lock; int wait_barrier; int nr_waiting; int barrier; } ;


 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void unfreeze_array(struct r10conf *conf)
{

 spin_lock_irq(&conf->resync_lock);
 conf->barrier--;
 conf->nr_waiting--;
 wake_up(&conf->wait_barrier);
 spin_unlock_irq(&conf->resync_lock);
}
