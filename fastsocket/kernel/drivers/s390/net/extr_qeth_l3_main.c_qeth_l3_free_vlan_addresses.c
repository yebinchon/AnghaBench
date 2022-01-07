
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_card {int vlangrp; } ;


 int qeth_l3_free_vlan_addresses4 (struct qeth_card*,unsigned short) ;
 int qeth_l3_free_vlan_addresses6 (struct qeth_card*,unsigned short) ;

__attribute__((used)) static void qeth_l3_free_vlan_addresses(struct qeth_card *card,
   unsigned short vid)
{
 if (!card->vlangrp)
  return;
 qeth_l3_free_vlan_addresses4(card, vid);
 qeth_l3_free_vlan_addresses6(card, vid);
}
