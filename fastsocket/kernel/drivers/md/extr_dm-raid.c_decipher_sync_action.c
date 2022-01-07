
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {int recovery; int ro; } ;


 int MD_RECOVERY_CHECK ;
 int MD_RECOVERY_FROZEN ;
 int MD_RECOVERY_NEEDED ;
 int MD_RECOVERY_RECOVER ;
 int MD_RECOVERY_REQUESTED ;
 int MD_RECOVERY_RESHAPE ;
 int MD_RECOVERY_RUNNING ;
 int MD_RECOVERY_SYNC ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static const char *decipher_sync_action(struct mddev *mddev)
{
 if (test_bit(MD_RECOVERY_FROZEN, &mddev->recovery))
  return "frozen";

 if (test_bit(MD_RECOVERY_RUNNING, &mddev->recovery) ||
     (!mddev->ro && test_bit(MD_RECOVERY_NEEDED, &mddev->recovery))) {
  if (test_bit(MD_RECOVERY_RESHAPE, &mddev->recovery))
   return "reshape";

  if (test_bit(MD_RECOVERY_SYNC, &mddev->recovery)) {
   if (!test_bit(MD_RECOVERY_REQUESTED, &mddev->recovery))
    return "resync";
   else if (test_bit(MD_RECOVERY_CHECK, &mddev->recovery))
    return "check";
   return "repair";
  }

  if (test_bit(MD_RECOVERY_RECOVER, &mddev->recovery))
   return "recover";
 }

 return "idle";
}
