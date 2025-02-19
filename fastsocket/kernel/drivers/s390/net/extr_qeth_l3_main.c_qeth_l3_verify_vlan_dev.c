
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vlan_group {int dummy; } ;
struct qeth_card {struct vlan_group* vlangrp; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {void* ml_priv; } ;


 int QETH_VLAN_CARD ;
 int VLAN_GROUP_ARRAY_LEN ;
 TYPE_1__* vlan_dev_real_dev (struct net_device*) ;
 struct net_device* vlan_group_get_device (struct vlan_group*,int) ;

__attribute__((used)) static int qeth_l3_verify_vlan_dev(struct net_device *dev,
   struct qeth_card *card)
{
 int rc = 0;
 struct vlan_group *vg;
 int i;

 vg = card->vlangrp;
 if (!vg)
  return rc;

 for (i = 0; i < VLAN_GROUP_ARRAY_LEN; i++) {
  if (vlan_group_get_device(vg, i) == dev) {
   rc = QETH_VLAN_CARD;
   break;
  }
 }

 if (rc && !(vlan_dev_real_dev(dev)->ml_priv == (void *)card))
  return 0;

 return rc;
}
