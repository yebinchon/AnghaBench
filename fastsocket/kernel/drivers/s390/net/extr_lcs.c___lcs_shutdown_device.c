
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int ccwdev; } ;
struct TYPE_3__ {int ccwdev; } ;
struct lcs_card {int state; TYPE_2__ write; TYPE_1__ read; int dev; } ;
struct ccwgroup_device {int dev; } ;
typedef enum lcs_dev_states { ____Placeholder_lcs_dev_states } lcs_dev_states ;


 int DEV_STATE_RECOVER ;
 int DEV_STATE_UP ;
 int ENODEV ;
 int ERESTARTSYS ;
 int LCS_DBF_HEX (int,int ,struct lcs_card**,int) ;
 int LCS_DBF_TEXT (int,int ,char*) ;
 int LCS_DBF_TEXT_ (int,int ,char*,int) ;
 int LCS_SET_MC_THREAD ;
 int ccw_device_set_offline (int ) ;
 struct lcs_card* dev_get_drvdata (int *) ;
 int lcs_set_allowed_threads (struct lcs_card*,int ) ;
 int lcs_stop_device (int ) ;
 scalar_t__ lcs_wait_for_threads (struct lcs_card*,int ) ;
 int setup ;

__attribute__((used)) static int
__lcs_shutdown_device(struct ccwgroup_device *ccwgdev, int recovery_mode)
{
 struct lcs_card *card;
 enum lcs_dev_states recover_state;
 int ret = 0, ret2 = 0, ret3 = 0;

 LCS_DBF_TEXT(3, setup, "shtdndev");
 card = dev_get_drvdata(&ccwgdev->dev);
 if (!card)
  return -ENODEV;
 if (recovery_mode == 0) {
  lcs_set_allowed_threads(card, 0);
  if (lcs_wait_for_threads(card, LCS_SET_MC_THREAD))
   return -ERESTARTSYS;
 }
 LCS_DBF_HEX(3, setup, &card, sizeof(void*));
 recover_state = card->state;

 ret = lcs_stop_device(card->dev);
 ret2 = ccw_device_set_offline(card->read.ccwdev);
 ret3 = ccw_device_set_offline(card->write.ccwdev);
 if (!ret)
  ret = (ret2) ? ret2 : ret3;
 if (ret)
  LCS_DBF_TEXT_(3, setup, "1err:%d", ret);
 if (recover_state == DEV_STATE_UP) {
  card->state = DEV_STATE_RECOVER;
 }
 return 0;
}
