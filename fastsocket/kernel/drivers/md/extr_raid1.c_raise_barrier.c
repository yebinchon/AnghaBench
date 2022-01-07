
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r1conf {scalar_t__ barrier; int resync_lock; int nr_pending; int wait_barrier; int nr_waiting; } ;


 scalar_t__ RESYNC_DEPTH ;
 int md_raid1_unplug_device (struct r1conf*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int wait_event_lock_irq (int ,int,int ,int ) ;

__attribute__((used)) static void raise_barrier(struct r1conf *conf)
{
 spin_lock_irq(&conf->resync_lock);


 wait_event_lock_irq(conf->wait_barrier, !conf->nr_waiting,
       conf->resync_lock,
       md_raid1_unplug_device(conf));


 conf->barrier++;


 wait_event_lock_irq(conf->wait_barrier,
       !conf->nr_pending && conf->barrier < RESYNC_DEPTH,
       conf->resync_lock,
       md_raid1_unplug_device(conf));

 spin_unlock_irq(&conf->resync_lock);
}
