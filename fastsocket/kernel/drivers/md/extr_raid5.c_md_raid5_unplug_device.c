
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r5conf {TYPE_1__* mddev; int device_lock; int seq_flush; int plug; } ;
struct TYPE_2__ {int thread; } ;


 int md_wakeup_thread (int ) ;
 scalar_t__ plugger_remove_plug (int *) ;
 int raid5_activate_delayed (struct r5conf*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int unplug_slaves (TYPE_1__*) ;

void md_raid5_unplug_device(struct r5conf *conf)
{
 unsigned long flags;

 spin_lock_irqsave(&conf->device_lock, flags);

 if (plugger_remove_plug(&conf->plug)) {
  conf->seq_flush++;
  raid5_activate_delayed(conf);
 }
 md_wakeup_thread(conf->mddev->thread);

 spin_unlock_irqrestore(&conf->device_lock, flags);

 unplug_slaves(conf->mddev);
}
