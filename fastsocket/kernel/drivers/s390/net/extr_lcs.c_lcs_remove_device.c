
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct lcs_card {scalar_t__ dev; } ;
struct TYPE_3__ {int kobj; } ;
struct ccwgroup_device {scalar_t__ state; TYPE_1__ dev; } ;


 scalar_t__ CCWGROUP_ONLINE ;
 int LCS_DBF_HEX (int,int ,struct lcs_card**,int) ;
 int LCS_DBF_TEXT (int,int ,char*) ;
 struct lcs_card* dev_get_drvdata (TYPE_1__*) ;
 int lcs_attr_group ;
 int lcs_cleanup_card (struct lcs_card*) ;
 int lcs_free_card (struct lcs_card*) ;
 int lcs_shutdown_device (struct ccwgroup_device*) ;
 int put_device (TYPE_1__*) ;
 int setup ;
 int sysfs_remove_group (int *,int *) ;
 int unregister_netdev (scalar_t__) ;

__attribute__((used)) static void
lcs_remove_device(struct ccwgroup_device *ccwgdev)
{
 struct lcs_card *card;

 card = dev_get_drvdata(&ccwgdev->dev);
 if (!card)
  return;

 LCS_DBF_TEXT(3, setup, "remdev");
 LCS_DBF_HEX(3, setup, &card, sizeof(void*));
 if (ccwgdev->state == CCWGROUP_ONLINE) {
  lcs_shutdown_device(ccwgdev);
 }
 if (card->dev)
  unregister_netdev(card->dev);
 sysfs_remove_group(&ccwgdev->dev.kobj, &lcs_attr_group);
 lcs_cleanup_card(card);
 lcs_free_card(card);
 put_device(&ccwgdev->dev);
}
