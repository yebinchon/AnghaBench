
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lcs_card {TYPE_1__* dev; struct ccwgroup_device* gdev; } ;
struct ccwgroup_device {int dev; } ;
struct TYPE_2__ {int name; } ;


 int LCS_DBF_TEXT (int,int ,char*) ;
 int LCS_RECOVERY_THREAD ;
 int __lcs_shutdown_device (struct ccwgroup_device*,int) ;
 int dev_warn (int *,char*) ;
 int lcs_clear_thread_running_bit (struct lcs_card*,int ) ;
 int lcs_do_run_thread (struct lcs_card*,int ) ;
 int lcs_new_device (struct ccwgroup_device*) ;
 int pr_info (char*,int ) ;
 int trace ;

__attribute__((used)) static int
lcs_recovery(void *ptr)
{
 struct lcs_card *card;
 struct ccwgroup_device *gdev;
        int rc;

 card = (struct lcs_card *) ptr;

 LCS_DBF_TEXT(4, trace, "recover1");
 if (!lcs_do_run_thread(card, LCS_RECOVERY_THREAD))
  return 0;
 LCS_DBF_TEXT(4, trace, "recover2");
 gdev = card->gdev;
 dev_warn(&gdev->dev,
  "A recovery process has been started for the LCS device\n");
 rc = __lcs_shutdown_device(gdev, 1);
 rc = lcs_new_device(gdev);
 if (!rc)
  pr_info("Device %s successfully recovered!\n",
   card->dev->name);
 else
  pr_info("Device %s could not be recovered!\n",
   card->dev->name);
 lcs_clear_thread_running_bit(card, LCS_RECOVERY_THREAD);
 return 0;
}
