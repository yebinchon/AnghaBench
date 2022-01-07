
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {int ro; int safemode; int flags; int sb_wait; int sysfs_state; int write_lock; int thread; scalar_t__ in_sync; int writes_pending; int sync_thread; int recovery; } ;
struct bio {int dummy; } ;


 int BUG_ON (int) ;
 int MD_CHANGE_CLEAN ;
 int MD_CHANGE_PENDING ;
 int MD_RECOVERY_NEEDED ;
 scalar_t__ WRITE ;
 int atomic_inc (int *) ;
 scalar_t__ bio_data_dir (struct bio*) ;
 int md_wakeup_thread (int ) ;
 int set_bit (int ,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int sysfs_notify_dirent_safe (int ) ;
 int test_bit (int ,int *) ;
 int wait_event (int ,int) ;

void md_write_start(struct mddev *mddev, struct bio *bi)
{
 int did_change = 0;
 if (bio_data_dir(bi) != WRITE)
  return;

 BUG_ON(mddev->ro == 1);
 if (mddev->ro == 2) {

  mddev->ro = 0;
  set_bit(MD_RECOVERY_NEEDED, &mddev->recovery);
  md_wakeup_thread(mddev->thread);
  md_wakeup_thread(mddev->sync_thread);
  did_change = 1;
 }
 atomic_inc(&mddev->writes_pending);
 if (mddev->safemode == 1)
  mddev->safemode = 0;
 if (mddev->in_sync) {
  spin_lock_irq(&mddev->write_lock);
  if (mddev->in_sync) {
   mddev->in_sync = 0;
   set_bit(MD_CHANGE_CLEAN, &mddev->flags);
   set_bit(MD_CHANGE_PENDING, &mddev->flags);
   md_wakeup_thread(mddev->thread);
   did_change = 1;
  }
  spin_unlock_irq(&mddev->write_lock);
 }
 if (did_change)
  sysfs_notify_dirent_safe(mddev->sysfs_state);
 wait_event(mddev->sb_wait,
     !test_bit(MD_CHANGE_PENDING, &mddev->flags));
}
