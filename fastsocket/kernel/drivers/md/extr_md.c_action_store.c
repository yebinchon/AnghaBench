
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mddev {int ro; int sysfs_action; scalar_t__ thread; int recovery; scalar_t__ sync_thread; int kobj; TYPE_1__* pers; } ;
typedef int ssize_t ;
struct TYPE_2__ {int (* start_reshape ) (struct mddev*) ;int sync_request; } ;


 int EBUSY ;
 int EINVAL ;
 int MD_RECOVERY_CHECK ;
 int MD_RECOVERY_FROZEN ;
 int MD_RECOVERY_INTR ;
 int MD_RECOVERY_NEEDED ;
 int MD_RECOVERY_RECOVER ;
 int MD_RECOVERY_REQUESTED ;
 int MD_RECOVERY_RUNNING ;
 int MD_RECOVERY_SYNC ;
 int clear_bit (int ,int *) ;
 scalar_t__ cmd_match (char const*,char*) ;
 int md_reap_sync_thread (struct mddev*) ;
 int md_wakeup_thread (scalar_t__) ;
 int set_bit (int ,int *) ;
 int stub1 (struct mddev*) ;
 int sysfs_notify (int *,int *,char*) ;
 int sysfs_notify_dirent_safe (int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static ssize_t
action_store(struct mddev *mddev, const char *page, size_t len)
{
 if (!mddev->pers || !mddev->pers->sync_request)
  return -EINVAL;

 if (cmd_match(page, "frozen"))
  set_bit(MD_RECOVERY_FROZEN, &mddev->recovery);
 else
  clear_bit(MD_RECOVERY_FROZEN, &mddev->recovery);

 if (cmd_match(page, "idle") || cmd_match(page, "frozen")) {
  if (mddev->sync_thread) {
   set_bit(MD_RECOVERY_INTR, &mddev->recovery);
   md_reap_sync_thread(mddev);
  }
 } else if (test_bit(MD_RECOVERY_RUNNING, &mddev->recovery) ||
     test_bit(MD_RECOVERY_NEEDED, &mddev->recovery))
  return -EBUSY;
 else if (cmd_match(page, "resync"))
  set_bit(MD_RECOVERY_NEEDED, &mddev->recovery);
 else if (cmd_match(page, "recover")) {
  set_bit(MD_RECOVERY_RECOVER, &mddev->recovery);
  set_bit(MD_RECOVERY_NEEDED, &mddev->recovery);
 } else if (cmd_match(page, "reshape")) {
  int err;
  if (mddev->pers->start_reshape == ((void*)0))
   return -EINVAL;
  err = mddev->pers->start_reshape(mddev);
  if (err)
   return err;
  sysfs_notify(&mddev->kobj, ((void*)0), "degraded");
 } else {
  if (cmd_match(page, "check"))
   set_bit(MD_RECOVERY_CHECK, &mddev->recovery);
  else if (!cmd_match(page, "repair"))
   return -EINVAL;
  set_bit(MD_RECOVERY_REQUESTED, &mddev->recovery);
  set_bit(MD_RECOVERY_SYNC, &mddev->recovery);
 }
 if (mddev->ro == 2) {



  mddev->ro = 0;
  md_wakeup_thread(mddev->sync_thread);
 }
 set_bit(MD_RECOVERY_NEEDED, &mddev->recovery);
 md_wakeup_thread(mddev->thread);
 sysfs_notify_dirent_safe(mddev->sysfs_action);
 return len;
}
