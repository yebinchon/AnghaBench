
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {int recovery; int ro; } ;
typedef int ssize_t ;


 int MD_RECOVERY_CHECK ;
 int MD_RECOVERY_FROZEN ;
 int MD_RECOVERY_NEEDED ;
 int MD_RECOVERY_RECOVER ;
 int MD_RECOVERY_REQUESTED ;
 int MD_RECOVERY_RESHAPE ;
 int MD_RECOVERY_RUNNING ;
 int MD_RECOVERY_SYNC ;
 int sprintf (char*,char*,char*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static ssize_t
action_show(struct mddev *mddev, char *page)
{
 char *type = "idle";
 if (test_bit(MD_RECOVERY_FROZEN, &mddev->recovery))
  type = "frozen";
 else if (test_bit(MD_RECOVERY_RUNNING, &mddev->recovery) ||
     (!mddev->ro && test_bit(MD_RECOVERY_NEEDED, &mddev->recovery))) {
  if (test_bit(MD_RECOVERY_RESHAPE, &mddev->recovery))
   type = "reshape";
  else if (test_bit(MD_RECOVERY_SYNC, &mddev->recovery)) {
   if (!test_bit(MD_RECOVERY_REQUESTED, &mddev->recovery))
    type = "resync";
   else if (test_bit(MD_RECOVERY_CHECK, &mddev->recovery))
    type = "check";
   else
    type = "repair";
  } else if (test_bit(MD_RECOVERY_RECOVER, &mddev->recovery))
   type = "recover";
 }
 return sprintf(page, "%s\n", type);
}
