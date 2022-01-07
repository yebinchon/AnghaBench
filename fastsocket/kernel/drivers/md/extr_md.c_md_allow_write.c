
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mddev {int safemode; int flags; int write_lock; int sysfs_state; scalar_t__ safemode_delay; scalar_t__ in_sync; TYPE_1__* pers; scalar_t__ ro; } ;
struct TYPE_2__ {int sync_request; } ;


 int EAGAIN ;
 int MD_CHANGE_CLEAN ;
 int MD_CHANGE_PENDING ;
 int md_update_sb (struct mddev*,int ) ;
 int set_bit (int ,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int sysfs_notify_dirent_safe (int ) ;
 scalar_t__ test_bit (int ,int *) ;

int md_allow_write(struct mddev *mddev)
{
 if (!mddev->pers)
  return 0;
 if (mddev->ro)
  return 0;
 if (!mddev->pers->sync_request)
  return 0;

 spin_lock_irq(&mddev->write_lock);
 if (mddev->in_sync) {
  mddev->in_sync = 0;
  set_bit(MD_CHANGE_CLEAN, &mddev->flags);
  set_bit(MD_CHANGE_PENDING, &mddev->flags);
  if (mddev->safemode_delay &&
      mddev->safemode == 0)
   mddev->safemode = 1;
  spin_unlock_irq(&mddev->write_lock);
  md_update_sb(mddev, 0);
  sysfs_notify_dirent_safe(mddev->sysfs_state);
 } else
  spin_unlock_irq(&mddev->write_lock);

 if (test_bit(MD_CHANGE_PENDING, &mddev->flags))
  return -EAGAIN;
 else
  return 0;
}
