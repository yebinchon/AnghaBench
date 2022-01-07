
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct qeth_rx {int dummy; } ;
struct TYPE_11__ {scalar_t__ type; scalar_t__ hwtrap; } ;
struct qeth_card {int state; int lan_online; int discipline_mutex; int conf_mutex; TYPE_3__* dev; TYPE_2__ info; TYPE_1__* gdev; int rx; } ;
struct TYPE_13__ {int kobj; } ;
struct ccwgroup_device {TYPE_8__ dev; } ;
typedef enum qeth_card_states { ____Placeholder_qeth_card_states } qeth_card_states ;
struct TYPE_12__ {int * dev_addr; } ;
struct TYPE_10__ {int dev; } ;


 int BUG_ON (int) ;
 int CARD_DDEV (struct qeth_card*) ;
 int CARD_RDEV (struct qeth_card*) ;
 int CARD_STATE_DOWN ;
 int CARD_STATE_HARDSETUP ;
 int CARD_STATE_RECOVER ;
 int CARD_STATE_SOFTSETUP ;
 int CARD_WDEV (struct qeth_card*) ;
 int EIO ;
 int ENODEV ;
 int KOBJ_CHANGE ;
 scalar_t__ QETH_CARD_TYPE_OSD ;
 scalar_t__ QETH_CARD_TYPE_OSM ;
 scalar_t__ QETH_CARD_TYPE_OSN ;
 scalar_t__ QETH_CARD_TYPE_OSX ;
 int QETH_DBF_HEX (int ,int,struct qeth_card**,int) ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 int QETH_DBF_TEXT_ (int ,int,char*,int) ;
 int QETH_DIAGS_CMD_TRAP ;
 int QETH_DIAGS_TRAP_ARM ;
 int SETUP ;
 int __qeth_l2_open (TYPE_3__*) ;
 int ccw_device_set_offline (int ) ;
 int ccw_device_set_online (int ) ;
 struct qeth_card* dev_get_drvdata (TYPE_8__*) ;
 int dev_open (TYPE_3__*) ;
 int dev_warn (int *,char*) ;
 int kobject_uevent (int *,int ) ;
 int memset (int *,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netif_carrier_off (TYPE_3__*) ;
 int netif_carrier_on (TYPE_3__*) ;
 int netif_tx_disable (TYPE_3__*) ;
 int qeth_core_hardsetup_card (struct qeth_card*) ;
 scalar_t__ qeth_hw_trap (struct qeth_card*,int ) ;
 int qeth_init_qdio_queues (struct qeth_card*) ;
 scalar_t__ qeth_is_diagass_supported (struct qeth_card*,int ) ;
 int qeth_l2_process_vlans (struct qeth_card*) ;
 int qeth_l2_send_setmac (struct qeth_card*,int *) ;
 int qeth_l2_set_multicast_list (TYPE_3__*) ;
 scalar_t__ qeth_l2_setup_netdev (struct qeth_card*) ;
 int qeth_l2_stop_card (struct qeth_card*,int ) ;
 int qeth_print_status_message (struct qeth_card*) ;
 int qeth_send_startlan (struct qeth_card*) ;
 int qeth_set_access_ctrl_online (struct qeth_card*,int ) ;
 int qeth_set_allowed_threads (struct qeth_card*,int,int ) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

__attribute__((used)) static int __qeth_l2_set_online(struct ccwgroup_device *gdev, int recovery_mode)
{
 struct qeth_card *card = dev_get_drvdata(&gdev->dev);
 int rc = 0;
 enum qeth_card_states recover_flag;

 BUG_ON(!card);
 mutex_lock(&card->discipline_mutex);
 mutex_lock(&card->conf_mutex);
 QETH_DBF_TEXT(SETUP, 2, "setonlin");
 QETH_DBF_HEX(SETUP, 2, &card, sizeof(void *));

 recover_flag = card->state;
 rc = ccw_device_set_online(CARD_RDEV(card));
 if (rc) {
  QETH_DBF_TEXT_(SETUP, 2, "1err%d", rc);
  rc = -EIO;
  goto out;
 }
 rc = ccw_device_set_online(CARD_WDEV(card));
 if (rc) {
  QETH_DBF_TEXT_(SETUP, 2, "1err%d", rc);
  rc = -EIO;
  goto out;
 }
 rc = ccw_device_set_online(CARD_DDEV(card));
 if (rc) {
  QETH_DBF_TEXT_(SETUP, 2, "1err%d", rc);
  rc = -EIO;
  goto out;
 }

 rc = qeth_core_hardsetup_card(card);
 if (rc) {
  QETH_DBF_TEXT_(SETUP, 2, "2err%d", rc);
  goto out_remove;
 }

 if (!card->dev && qeth_l2_setup_netdev(card))
  goto out_remove;

 if (card->info.type != QETH_CARD_TYPE_OSN)
  qeth_l2_send_setmac(card, &card->dev->dev_addr[0]);

 if (qeth_is_diagass_supported(card, QETH_DIAGS_CMD_TRAP)) {
  if (card->info.hwtrap &&
      qeth_hw_trap(card, QETH_DIAGS_TRAP_ARM))
   card->info.hwtrap = 0;
 } else
  card->info.hwtrap = 0;

 card->state = CARD_STATE_HARDSETUP;
 memset(&card->rx, 0, sizeof(struct qeth_rx));
 qeth_print_status_message(card);


 QETH_DBF_TEXT(SETUP, 2, "softsetp");

 rc = qeth_send_startlan(card);
 if (rc) {
  QETH_DBF_TEXT_(SETUP, 2, "1err%d", rc);
  if (rc == 0xe080) {
   dev_warn(&card->gdev->dev,
    "The LAN is offline\n");
   card->lan_online = 0;
   goto contin;
  }
  rc = -ENODEV;
  goto out_remove;
 } else
  card->lan_online = 1;

contin:
 if ((card->info.type == QETH_CARD_TYPE_OSD) ||
     (card->info.type == QETH_CARD_TYPE_OSX)) {

  rc = qeth_set_access_ctrl_online(card, 0);
  if (rc) {
   rc = -ENODEV;
   goto out_remove;
  }
 }

 if (card->info.type != QETH_CARD_TYPE_OSN &&
     card->info.type != QETH_CARD_TYPE_OSM)
  qeth_l2_process_vlans(card);

 netif_tx_disable(card->dev);

 rc = qeth_init_qdio_queues(card);
 if (rc) {
  QETH_DBF_TEXT_(SETUP, 2, "6err%d", rc);
  goto out_remove;
 }
 card->state = CARD_STATE_SOFTSETUP;
 if (card->lan_online)
  netif_carrier_on(card->dev);
 else
  netif_carrier_off(card->dev);

 qeth_set_allowed_threads(card, 0xffffffff, 0);
 if (recover_flag == CARD_STATE_RECOVER) {
  if (recovery_mode &&
      card->info.type != QETH_CARD_TYPE_OSN) {
   __qeth_l2_open(card->dev);
  } else {
   rtnl_lock();
   dev_open(card->dev);
   rtnl_unlock();
  }

  qeth_l2_set_multicast_list(card->dev);
 }

 kobject_uevent(&gdev->dev.kobj, KOBJ_CHANGE);
out:
 mutex_unlock(&card->conf_mutex);
 mutex_unlock(&card->discipline_mutex);
 return rc;
out_remove:
 qeth_l2_stop_card(card, 0);
 ccw_device_set_offline(CARD_DDEV(card));
 ccw_device_set_offline(CARD_WDEV(card));
 ccw_device_set_offline(CARD_RDEV(card));
 if (recover_flag == CARD_STATE_RECOVER)
  card->state = CARD_STATE_RECOVER;
 else
  card->state = CARD_STATE_DOWN;
 mutex_unlock(&card->conf_mutex);
 mutex_unlock(&card->discipline_mutex);
 return -ENODEV;
}
