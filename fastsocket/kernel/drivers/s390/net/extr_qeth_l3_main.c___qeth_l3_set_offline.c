
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ cq; } ;
struct TYPE_4__ {int hwtrap; } ;
struct qeth_card {int state; int discipline_mutex; int conf_mutex; scalar_t__ dev; TYPE_2__ options; TYPE_1__ info; } ;
struct TYPE_6__ {int kobj; } ;
struct ccwgroup_device {TYPE_3__ dev; } ;
typedef enum qeth_card_states { ____Placeholder_qeth_card_states } qeth_card_states ;


 int CARD_DDEV (struct qeth_card*) ;
 int CARD_RDEV (struct qeth_card*) ;
 int CARD_STATE_RECOVER ;
 int CARD_STATE_UP ;
 int CARD_WDEV (struct qeth_card*) ;
 int KOBJ_CHANGE ;
 int NETDEV_REBOOT ;
 scalar_t__ QETH_CQ_ENABLED ;
 int QETH_DBF_HEX (int ,int,struct qeth_card**,int) ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 int QETH_DBF_TEXT_ (int ,int,char*,int) ;
 int QETH_DIAGS_TRAP_DISARM ;
 int SETUP ;
 int call_netdevice_notifiers (int ,scalar_t__) ;
 int ccw_device_set_offline (int ) ;
 struct qeth_card* dev_get_drvdata (TYPE_3__*) ;
 int kobject_uevent (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netif_carrier_off (scalar_t__) ;
 scalar_t__ netif_carrier_ok (scalar_t__) ;
 int qeth_hw_trap (struct qeth_card*,int ) ;
 int qeth_l3_stop_card (struct qeth_card*,int) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

__attribute__((used)) static int __qeth_l3_set_offline(struct ccwgroup_device *cgdev,
   int recovery_mode)
{
 struct qeth_card *card = dev_get_drvdata(&cgdev->dev);
 int rc = 0, rc2 = 0, rc3 = 0;
 enum qeth_card_states recover_flag;

 mutex_lock(&card->discipline_mutex);
 mutex_lock(&card->conf_mutex);
 QETH_DBF_TEXT(SETUP, 3, "setoffl");
 QETH_DBF_HEX(SETUP, 3, &card, sizeof(void *));

 if (card->dev && netif_carrier_ok(card->dev))
  netif_carrier_off(card->dev);
 recover_flag = card->state;
 if ((!recovery_mode && card->info.hwtrap) || card->info.hwtrap == 2) {
  qeth_hw_trap(card, QETH_DIAGS_TRAP_DISARM);
  card->info.hwtrap = 1;
 }
 qeth_l3_stop_card(card, recovery_mode);
 if ((card->options.cq == QETH_CQ_ENABLED) && card->dev) {
  rtnl_lock();
  call_netdevice_notifiers(NETDEV_REBOOT, card->dev);
  rtnl_unlock();
 }
 rc = ccw_device_set_offline(CARD_DDEV(card));
 rc2 = ccw_device_set_offline(CARD_WDEV(card));
 rc3 = ccw_device_set_offline(CARD_RDEV(card));
 if (!rc)
  rc = (rc2) ? rc2 : rc3;
 if (rc)
  QETH_DBF_TEXT_(SETUP, 2, "1err%d", rc);
 if (recover_flag == CARD_STATE_UP)
  card->state = CARD_STATE_RECOVER;

 kobject_uevent(&cgdev->dev.kobj, KOBJ_CHANGE);
 mutex_unlock(&card->conf_mutex);
 mutex_unlock(&card->discipline_mutex);
 return 0;
}
