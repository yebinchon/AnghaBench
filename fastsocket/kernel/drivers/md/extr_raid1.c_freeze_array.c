
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r1conf {scalar_t__ nr_pending; scalar_t__ nr_queued; int resync_lock; int wait_barrier; int nr_waiting; int barrier; } ;


 int flush_pending_writes (struct r1conf*) ;
 int md_raid1_unplug_device (struct r1conf*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int wait_event_lock_irq (int ,int,int ,int ) ;

__attribute__((used)) static void freeze_array(struct r1conf *conf, int extra)
{
 spin_lock_irq(&conf->resync_lock);
 conf->barrier++;
 conf->nr_waiting++;
 wait_event_lock_irq(conf->wait_barrier,
    conf->nr_pending == conf->nr_queued+extra,
    conf->resync_lock,
       ({ flush_pending_writes(conf);
          md_raid1_unplug_device(conf); }));
 spin_unlock_irq(&conf->resync_lock);
}
