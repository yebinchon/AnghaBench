
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mddev {int ro; scalar_t__ thread; int suspended; int recovery; scalar_t__ sync_thread; TYPE_1__* pers; } ;
struct raid_set {struct mddev md; } ;
struct dm_target {struct raid_set* private; } ;
struct TYPE_2__ {int sync_request; } ;


 int DMERR (char*) ;
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
 int md_reap_sync_thread (struct mddev*) ;
 int md_wakeup_thread (scalar_t__) ;
 int set_bit (int ,int *) ;
 int strcasecmp (char*,char*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int raid_message(struct dm_target *ti, unsigned argc, char **argv)
{
 struct raid_set *rs = ti->private;
 struct mddev *mddev = &rs->md;

 if (!strcasecmp(argv[0], "reshape")) {
  DMERR("Reshape not supported.");
  return -EINVAL;
 }

 if (!mddev->pers || !mddev->pers->sync_request)
  return -EINVAL;

 if (!strcasecmp(argv[0], "frozen"))
  set_bit(MD_RECOVERY_FROZEN, &mddev->recovery);
 else
  clear_bit(MD_RECOVERY_FROZEN, &mddev->recovery);

 if (!strcasecmp(argv[0], "idle") || !strcasecmp(argv[0], "frozen")) {
  if (mddev->sync_thread) {
   set_bit(MD_RECOVERY_INTR, &mddev->recovery);
   md_reap_sync_thread(mddev);
  }
 } else if (test_bit(MD_RECOVERY_RUNNING, &mddev->recovery) ||
     test_bit(MD_RECOVERY_NEEDED, &mddev->recovery))
  return -EBUSY;
 else if (!strcasecmp(argv[0], "resync"))
  set_bit(MD_RECOVERY_NEEDED, &mddev->recovery);
 else if (!strcasecmp(argv[0], "recover")) {
  set_bit(MD_RECOVERY_RECOVER, &mddev->recovery);
  set_bit(MD_RECOVERY_NEEDED, &mddev->recovery);
 } else {
  if (!strcasecmp(argv[0], "check"))
   set_bit(MD_RECOVERY_CHECK, &mddev->recovery);
  else if (!!strcasecmp(argv[0], "repair"))
   return -EINVAL;
  set_bit(MD_RECOVERY_REQUESTED, &mddev->recovery);
  set_bit(MD_RECOVERY_SYNC, &mddev->recovery);
 }
 if (mddev->ro == 2) {



  mddev->ro = 0;
  if (!mddev->suspended)
   md_wakeup_thread(mddev->sync_thread);
 }
 set_bit(MD_RECOVERY_NEEDED, &mddev->recovery);
 if (!mddev->suspended)
  md_wakeup_thread(mddev->thread);

 return 0;
}
