
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r10conf {int wait_barrier; int device_lock; int nr_queued; int retry_list; } ;
struct r10bio {int retry_list; struct mddev* mddev; } ;
struct mddev {int thread; struct r10conf* private; } ;


 int list_add (int *,int *) ;
 int md_wakeup_thread (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up (int *) ;

__attribute__((used)) static void reschedule_retry(struct r10bio *r10_bio)
{
 unsigned long flags;
 struct mddev *mddev = r10_bio->mddev;
 struct r10conf *conf = mddev->private;

 spin_lock_irqsave(&conf->device_lock, flags);
 list_add(&r10_bio->retry_list, &conf->retry_list);
 conf->nr_queued ++;
 spin_unlock_irqrestore(&conf->device_lock, flags);


 wake_up(&conf->wait_barrier);

 md_wakeup_thread(mddev->thread);
}
