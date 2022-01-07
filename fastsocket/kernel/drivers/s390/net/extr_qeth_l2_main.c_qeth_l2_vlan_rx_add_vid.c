
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qeth_vlan_vid {unsigned short vid; int list; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct qeth_card {int vlanlock; int vid_list; TYPE_1__ info; } ;
struct net_device {struct qeth_card* ml_priv; } ;


 int GFP_ATOMIC ;
 int IPA_CMD_SETVLAN ;
 scalar_t__ QETH_CARD_TYPE_OSM ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 int QETH_DBF_TEXT_ (int ,int,char*,unsigned short) ;
 int QETH_RECOVER_THREAD ;
 int TRACE ;
 struct qeth_vlan_vid* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int qeth_l2_send_setdelvlan (struct qeth_card*,unsigned short,int ) ;
 scalar_t__ qeth_wait_for_threads (struct qeth_card*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void qeth_l2_vlan_rx_add_vid(struct net_device *dev, unsigned short vid)
{
 struct qeth_card *card = dev->ml_priv;
 struct qeth_vlan_vid *id;

 QETH_DBF_TEXT_(TRACE, 4, "aid:%d", vid);
 if (!vid)
  return;
 if (card->info.type == QETH_CARD_TYPE_OSM) {
  QETH_DBF_TEXT(TRACE, 3, "aidOSM");
  return;
 }
 if (qeth_wait_for_threads(card, QETH_RECOVER_THREAD)) {
  QETH_DBF_TEXT(TRACE, 3, "aidREC");
  return;
 }
 id = kmalloc(sizeof(struct qeth_vlan_vid), GFP_ATOMIC);
 if (id) {
  id->vid = vid;
  qeth_l2_send_setdelvlan(card, vid, IPA_CMD_SETVLAN);
  spin_lock_bh(&card->vlanlock);
  list_add_tail(&id->list, &card->vid_list);
  spin_unlock_bh(&card->vlanlock);
 }
}
