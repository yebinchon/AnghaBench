
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_card {int dev; int vlanlock; int vlangrp; } ;
struct net_device {struct qeth_card* ml_priv; } ;


 int QETH_DBF_TEXT (int ,int,char*) ;
 int QETH_DBF_TEXT_ (int ,int,char*,unsigned short) ;
 int QETH_RECOVER_THREAD ;
 int TRACE ;
 int qeth_l3_free_vlan_addresses (struct qeth_card*,unsigned short) ;
 int qeth_l3_set_multicast_list (int ) ;
 scalar_t__ qeth_wait_for_threads (struct qeth_card*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vlan_group_set_device (int ,unsigned short,int *) ;

__attribute__((used)) static void qeth_l3_vlan_rx_kill_vid(struct net_device *dev, unsigned short vid)
{
 struct qeth_card *card = dev->ml_priv;
 unsigned long flags;

 QETH_DBF_TEXT_(TRACE, 4, "kid:%d", vid);
 if (qeth_wait_for_threads(card, QETH_RECOVER_THREAD)) {
  QETH_DBF_TEXT(TRACE, 3, "kidREC");
  return;
 }
 spin_lock_irqsave(&card->vlanlock, flags);

 qeth_l3_free_vlan_addresses(card, vid);
 vlan_group_set_device(card->vlangrp, vid, ((void*)0));
 spin_unlock_irqrestore(&card->vlanlock, flags);
 qeth_l3_set_multicast_list(card->dev);
}
