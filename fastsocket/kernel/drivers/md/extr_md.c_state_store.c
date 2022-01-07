
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mddev {scalar_t__ pers; int thread; int recovery; } ;
struct TYPE_2__ {scalar_t__ unacked_exist; } ;
struct md_rdev {int raid_disk; int sysfs_state; int flags; struct mddev* mddev; int blocked_wait; TYPE_1__ badblocks; } ;
typedef int ssize_t ;


 int Blocked ;
 int BlockedBadBlocks ;
 int EBUSY ;
 int EINVAL ;
 int Faulty ;
 int In_sync ;
 int MD_RECOVERY_NEEDED ;
 int Replacement ;
 int WantReplacement ;
 int WriteErrorSeen ;
 int WriteMostly ;
 int clear_bit (int ,int *) ;
 scalar_t__ cmd_match (char const*,char*) ;
 int kick_rdev_from_array (struct md_rdev*) ;
 int md_error (struct mddev*,struct md_rdev*) ;
 int md_new_event (struct mddev*) ;
 int md_update_sb (struct mddev*,int) ;
 int md_wakeup_thread (int ) ;
 int set_bit (int ,int *) ;
 int sysfs_notify_dirent_safe (int ) ;
 scalar_t__ test_bit (int ,int *) ;
 int wake_up (int *) ;

__attribute__((used)) static ssize_t
state_store(struct md_rdev *rdev, const char *buf, size_t len)
{
 int err = -EINVAL;
 if (cmd_match(buf, "faulty") && rdev->mddev->pers) {
  md_error(rdev->mddev, rdev);
  if (test_bit(Faulty, &rdev->flags))
   err = 0;
  else
   err = -EBUSY;
 } else if (cmd_match(buf, "remove")) {
  if (rdev->raid_disk >= 0)
   err = -EBUSY;
  else {
   struct mddev *mddev = rdev->mddev;
   kick_rdev_from_array(rdev);
   if (mddev->pers)
    md_update_sb(mddev, 1);
   md_new_event(mddev);
   err = 0;
  }
 } else if (cmd_match(buf, "writemostly")) {
  set_bit(WriteMostly, &rdev->flags);
  err = 0;
 } else if (cmd_match(buf, "-writemostly")) {
  clear_bit(WriteMostly, &rdev->flags);
  err = 0;
 } else if (cmd_match(buf, "blocked")) {
  set_bit(Blocked, &rdev->flags);
  err = 0;
 } else if (cmd_match(buf, "-blocked")) {
  if (!test_bit(Faulty, &rdev->flags) &&
      rdev->badblocks.unacked_exist) {



   md_error(rdev->mddev, rdev);
  }
  clear_bit(Blocked, &rdev->flags);
  clear_bit(BlockedBadBlocks, &rdev->flags);
  wake_up(&rdev->blocked_wait);
  set_bit(MD_RECOVERY_NEEDED, &rdev->mddev->recovery);
  md_wakeup_thread(rdev->mddev->thread);

  err = 0;
 } else if (cmd_match(buf, "insync") && rdev->raid_disk == -1) {
  set_bit(In_sync, &rdev->flags);
  err = 0;
 } else if (cmd_match(buf, "write_error")) {
  set_bit(WriteErrorSeen, &rdev->flags);
  err = 0;
 } else if (cmd_match(buf, "-write_error")) {
  clear_bit(WriteErrorSeen, &rdev->flags);
  err = 0;
 } else if (cmd_match(buf, "want_replacement")) {




  if (rdev->raid_disk >= 0 &&
      !test_bit(Replacement, &rdev->flags))
   set_bit(WantReplacement, &rdev->flags);
  set_bit(MD_RECOVERY_NEEDED, &rdev->mddev->recovery);
  md_wakeup_thread(rdev->mddev->thread);
  err = 0;
 } else if (cmd_match(buf, "-want_replacement")) {



  err = 0;
  clear_bit(WantReplacement, &rdev->flags);
 } else if (cmd_match(buf, "replacement")) {




  if (rdev->mddev->pers)
   err = -EBUSY;
  else {
   set_bit(Replacement, &rdev->flags);
   err = 0;
  }
 } else if (cmd_match(buf, "-replacement")) {

  if (rdev->mddev->pers)
   err = -EBUSY;
  else {
   clear_bit(Replacement, &rdev->flags);
   err = 0;
  }
 }
 if (!err)
  sysfs_notify_dirent_safe(rdev->sysfs_state);
 return err ? err : len;
}
