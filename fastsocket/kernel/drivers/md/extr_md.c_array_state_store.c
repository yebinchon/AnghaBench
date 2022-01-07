
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {int ro; int in_sync; int safemode; scalar_t__ hold_active; int sysfs_state; int gendisk; int sb_wait; int flags; int pers; int write_lock; int writes_pending; } ;
typedef int ssize_t ;
typedef enum array_state { ____Placeholder_array_state } array_state ;


 int EBUSY ;
 int EINVAL ;
 int MD_CHANGE_CLEAN ;
 int MD_CHANGE_PENDING ;
 scalar_t__ UNTIL_IOCTL ;


 int array_states ;
 int atomic_read (int *) ;



 int clear_bit (int ,int *) ;
 int do_md_run (struct mddev*) ;
 int do_md_stop (struct mddev*,int,int *) ;

 int match_word (char const*,int ) ;
 int md_set_readonly (struct mddev*,int *) ;


 int restart_array (struct mddev*) ;
 int set_bit (int ,int *) ;
 int set_disk_ro (int ,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

 int sysfs_notify_dirent_safe (int ) ;
 int wake_up (int *) ;


__attribute__((used)) static ssize_t
array_state_store(struct mddev *mddev, const char *buf, size_t len)
{
 int err = -EINVAL;
 enum array_state st = match_word(buf, array_states);
 switch(st) {
 case 135:
  break;
 case 133:

  err = do_md_stop(mddev, 0, ((void*)0));
  break;
 case 132:

  if (mddev->pers)
   err = do_md_stop(mddev, 2, ((void*)0));
  else
   err = 0;
  break;
 case 129:
  break;
 case 130:
  if (mddev->pers)
   err = md_set_readonly(mddev, ((void*)0));
  else {
   mddev->ro = 1;
   set_disk_ro(mddev->gendisk, 1);
   err = do_md_run(mddev);
  }
  break;
 case 131:
  if (mddev->pers) {
   if (mddev->ro == 0)
    err = md_set_readonly(mddev, ((void*)0));
   else if (mddev->ro == 1)
    err = restart_array(mddev);
   if (err == 0) {
    mddev->ro = 2;
    set_disk_ro(mddev->gendisk, 0);
   }
  } else {
   mddev->ro = 2;
   err = do_md_run(mddev);
  }
  break;
 case 134:
  if (mddev->pers) {
   restart_array(mddev);
   spin_lock_irq(&mddev->write_lock);
   if (atomic_read(&mddev->writes_pending) == 0) {
    if (mddev->in_sync == 0) {
     mddev->in_sync = 1;
     if (mddev->safemode == 1)
      mddev->safemode = 0;
     set_bit(MD_CHANGE_CLEAN, &mddev->flags);
    }
    err = 0;
   } else
    err = -EBUSY;
   spin_unlock_irq(&mddev->write_lock);
  } else
   err = -EINVAL;
  break;
 case 137:
  if (mddev->pers) {
   restart_array(mddev);
   clear_bit(MD_CHANGE_PENDING, &mddev->flags);
   wake_up(&mddev->sb_wait);
   err = 0;
  } else {
   mddev->ro = 0;
   set_disk_ro(mddev->gendisk, 0);
   err = do_md_run(mddev);
  }
  break;
 case 128:
 case 136:

  break;
 }
 if (err)
  return err;
 else {
  if (mddev->hold_active == UNTIL_IOCTL)
   mddev->hold_active = 0;
  sysfs_notify_dirent_safe(mddev->sysfs_state);
  return len;
 }
}
