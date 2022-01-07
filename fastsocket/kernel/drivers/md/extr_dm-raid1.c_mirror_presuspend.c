
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bio_list {int dummy; } ;
struct mirror_set {int kmirrord_wq; int rh; int lock; struct bio_list holds; int suspend; } ;
struct dm_target {scalar_t__ private; } ;
struct dm_dirty_log {TYPE_1__* type; } ;
struct bio {int dummy; } ;
struct TYPE_2__ {scalar_t__ (* presuspend ) (struct dm_dirty_log*) ;} ;


 int DMWARN (char*) ;
 int _kmirrord_recovery_stopped ;
 int atomic_set (int *,int) ;
 int bio_list_init (struct bio_list*) ;
 struct bio* bio_list_pop (struct bio_list*) ;
 struct dm_dirty_log* dm_rh_dirty_log (int ) ;
 int dm_rh_recovery_in_flight (int ) ;
 int dm_rh_stop_recovery (int ) ;
 int flush_workqueue (int ) ;
 int hold_bio (struct mirror_set*,struct bio*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ stub1 (struct dm_dirty_log*) ;
 int wait_event (int ,int) ;

__attribute__((used)) static void mirror_presuspend(struct dm_target *ti)
{
 struct mirror_set *ms = (struct mirror_set *) ti->private;
 struct dm_dirty_log *log = dm_rh_dirty_log(ms->rh);

 struct bio_list holds;
 struct bio *bio;

 atomic_set(&ms->suspend, 1);







 spin_lock_irq(&ms->lock);
 holds = ms->holds;
 bio_list_init(&ms->holds);
 spin_unlock_irq(&ms->lock);

 while ((bio = bio_list_pop(&holds)))
  hold_bio(ms, bio);





 dm_rh_stop_recovery(ms->rh);

 wait_event(_kmirrord_recovery_stopped,
     !dm_rh_recovery_in_flight(ms->rh));

 if (log->type->presuspend && log->type->presuspend(log))

  DMWARN("log presuspend failed");







 flush_workqueue(ms->kmirrord_wq);
}
