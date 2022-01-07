
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qeth_card {scalar_t__ state; TYPE_1__* gdev; scalar_t__ dev; } ;
struct ccwgroup_device {scalar_t__ state; int dev; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ CARD_STATE_RECOVER ;
 scalar_t__ CCWGROUP_OFFLINE ;
 int __qeth_l3_set_online (TYPE_1__*,int) ;
 int dev_close (scalar_t__) ;
 struct qeth_card* dev_get_drvdata (int *) ;
 int dev_warn (int *,char*) ;
 int netif_device_attach (scalar_t__) ;
 int qeth_set_allowed_threads (struct qeth_card*,int,int ) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

__attribute__((used)) static int qeth_l3_pm_resume(struct ccwgroup_device *gdev)
{
 struct qeth_card *card = dev_get_drvdata(&gdev->dev);
 int rc = 0;

 if (gdev->state == CCWGROUP_OFFLINE)
  goto out;

 if (card->state == CARD_STATE_RECOVER) {
  rc = __qeth_l3_set_online(card->gdev, 1);
  if (rc) {
   if (card->dev) {
    rtnl_lock();
    dev_close(card->dev);
    rtnl_unlock();
   }
  }
 } else
  rc = __qeth_l3_set_online(card->gdev, 0);
out:
 qeth_set_allowed_threads(card, 0xffffffff, 0);
 if (card->dev)
  netif_device_attach(card->dev);
 if (rc)
  dev_warn(&card->gdev->dev, "The qeth device driver "
   "failed to recover an error on the device\n");
 return rc;
}
