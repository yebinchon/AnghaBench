
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct multipath_bh {int retry_list; struct mddev* mddev; } ;
struct mpconf {int device_lock; int retry_list; } ;
struct mddev {int thread; struct mpconf* private; } ;


 int list_add (int *,int *) ;
 int md_wakeup_thread (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void multipath_reschedule_retry (struct multipath_bh *mp_bh)
{
 unsigned long flags;
 struct mddev *mddev = mp_bh->mddev;
 struct mpconf *conf = mddev->private;

 spin_lock_irqsave(&conf->device_lock, flags);
 list_add(&mp_bh->retry_list, &conf->retry_list);
 spin_unlock_irqrestore(&conf->device_lock, flags);
 md_wakeup_thread(mddev->thread);
}
