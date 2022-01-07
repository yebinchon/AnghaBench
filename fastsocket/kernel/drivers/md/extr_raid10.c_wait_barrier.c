
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r10conf {int resync_lock; scalar_t__ nr_pending; int nr_waiting; scalar_t__ barrier; int wait_barrier; } ;
struct TYPE_2__ {scalar_t__ bio_tail; scalar_t__ bio_list; } ;


 TYPE_1__* current ;
 int md_raid10_unplug_device (struct r10conf*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int wait_event_lock_irq (int ,int,int ,int ) ;

__attribute__((used)) static void wait_barrier(struct r10conf *conf)
{
 spin_lock_irq(&conf->resync_lock);
 if (conf->barrier) {
  conf->nr_waiting++;
  wait_event_lock_irq(conf->wait_barrier,
        !conf->barrier ||
        (conf->nr_pending &&
         current->bio_list &&
         current->bio_tail),
        conf->resync_lock,
        md_raid10_unplug_device(conf)
   );
  conf->nr_waiting--;
 }
 conf->nr_pending++;
 spin_unlock_irq(&conf->resync_lock);
}
