
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mask; int addr; } ;
struct TYPE_4__ {TYPE_1__ a4; } ;
struct qeth_ipaddr {int type; TYPE_2__ u; } ;
struct qeth_card {int vlangrp; } ;
struct in_ifaddr {int ifa_mask; int ifa_address; struct in_ifaddr* ifa_next; } ;
struct in_device {struct in_ifaddr* ifa_list; } ;


 int QETH_DBF_TEXT (int ,int,char*) ;
 int QETH_IP_TYPE_NORMAL ;
 int QETH_PROT_IPV4 ;
 int TRACE ;
 struct in_device* in_dev_get (int ) ;
 int in_dev_put (struct in_device*) ;
 int kfree (struct qeth_ipaddr*) ;
 int qeth_l3_delete_ip (struct qeth_card*,struct qeth_ipaddr*) ;
 struct qeth_ipaddr* qeth_l3_get_addr_buffer (int ) ;
 int vlan_group_get_device (int ,unsigned short) ;

__attribute__((used)) static void qeth_l3_free_vlan_addresses4(struct qeth_card *card,
   unsigned short vid)
{
 struct in_device *in_dev;
 struct in_ifaddr *ifa;
 struct qeth_ipaddr *addr;

 QETH_DBF_TEXT(TRACE, 4, "frvaddr4");

 in_dev = in_dev_get(vlan_group_get_device(card->vlangrp, vid));
 if (!in_dev)
  return;
 for (ifa = in_dev->ifa_list; ifa; ifa = ifa->ifa_next) {
  addr = qeth_l3_get_addr_buffer(QETH_PROT_IPV4);
  if (addr) {
   addr->u.a4.addr = ifa->ifa_address;
   addr->u.a4.mask = ifa->ifa_mask;
   addr->type = QETH_IP_TYPE_NORMAL;
   if (!qeth_l3_delete_ip(card, addr))
    kfree(addr);
  }
 }
 in_dev_put(in_dev);
}
