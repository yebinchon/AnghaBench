
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pfxlen; int addr; } ;
struct TYPE_4__ {TYPE_1__ a6; } ;
struct qeth_ipaddr {int type; TYPE_2__ u; } ;
struct qeth_card {int vlangrp; } ;
struct inet6_ifaddr {int prefix_len; int addr; struct inet6_ifaddr* lst_next; } ;
struct inet6_dev {struct inet6_ifaddr* addr_list; } ;
struct in6_addr {int dummy; } ;


 int QETH_DBF_TEXT (int ,int,char*) ;
 int QETH_IP_TYPE_NORMAL ;
 int QETH_PROT_IPV6 ;
 int TRACE ;
 struct inet6_dev* in6_dev_get (int ) ;
 int in6_dev_put (struct inet6_dev*) ;
 int kfree (struct qeth_ipaddr*) ;
 int memcpy (int *,int *,int) ;
 int qeth_l3_delete_ip (struct qeth_card*,struct qeth_ipaddr*) ;
 struct qeth_ipaddr* qeth_l3_get_addr_buffer (int ) ;
 int vlan_group_get_device (int ,unsigned short) ;

__attribute__((used)) static void qeth_l3_free_vlan_addresses6(struct qeth_card *card,
   unsigned short vid)
{
}
