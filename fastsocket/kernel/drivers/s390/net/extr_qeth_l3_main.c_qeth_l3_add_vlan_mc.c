
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlan_group {int dummy; } ;
struct qeth_card {struct vlan_group* vlangrp; } ;
struct net_device {int flags; } ;
struct in_device {int mc_list_lock; } ;


 int IFF_UP ;
 int IPA_FULL_VLAN ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 int TRACE ;
 int VLAN_GROUP_ARRAY_LEN ;
 struct in_device* in_dev_get (struct net_device*) ;
 int in_dev_put (struct in_device*) ;
 int qeth_is_supported (struct qeth_card*,int ) ;
 int qeth_l3_add_mc (struct qeth_card*,struct in_device*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 struct net_device* vlan_group_get_device (struct vlan_group*,int) ;

__attribute__((used)) static void qeth_l3_add_vlan_mc(struct qeth_card *card)
{
 struct in_device *in_dev;
 struct vlan_group *vg;
 int i;

 QETH_DBF_TEXT(TRACE, 4, "addmcvl");
 if (!qeth_is_supported(card, IPA_FULL_VLAN) || (card->vlangrp == ((void*)0)))
  return;

 vg = card->vlangrp;
 for (i = 0; i < VLAN_GROUP_ARRAY_LEN; i++) {
  struct net_device *netdev = vlan_group_get_device(vg, i);
  if (netdev == ((void*)0) ||
      !(netdev->flags & IFF_UP))
   continue;
  in_dev = in_dev_get(netdev);
  if (!in_dev)
   continue;
  read_lock(&in_dev->mc_list_lock);
  qeth_l3_add_mc(card, in_dev);
  read_unlock(&in_dev->mc_list_lock);
  in_dev_put(in_dev);
 }
}
