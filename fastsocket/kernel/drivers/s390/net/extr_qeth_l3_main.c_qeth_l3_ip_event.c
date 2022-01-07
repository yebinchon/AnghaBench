
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int mask; int addr; } ;
struct TYPE_6__ {TYPE_2__ a4; } ;
struct qeth_ipaddr {int type; TYPE_3__ u; } ;
struct qeth_card {int dummy; } ;
struct notifier_block {int dummy; } ;
struct net_device {int dummy; } ;
struct in_ifaddr {int ifa_mask; int ifa_address; TYPE_1__* ifa_dev; } ;
struct TYPE_4__ {scalar_t__ dev; } ;




 int NOTIFY_DONE ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 int QETH_IP_TYPE_NORMAL ;
 int QETH_PROT_IPV4 ;
 int TRACE ;
 int * dev_net (struct net_device*) ;
 int init_net ;
 int kfree (struct qeth_ipaddr*) ;
 int qeth_l3_add_ip (struct qeth_card*,struct qeth_ipaddr*) ;
 int qeth_l3_delete_ip (struct qeth_card*,struct qeth_ipaddr*) ;
 struct qeth_ipaddr* qeth_l3_get_addr_buffer (int ) ;
 struct qeth_card* qeth_l3_get_card_from_dev (struct net_device*) ;
 int qeth_l3_set_ip_addr_list (struct qeth_card*) ;

__attribute__((used)) static int qeth_l3_ip_event(struct notifier_block *this,
       unsigned long event, void *ptr)
{
 struct in_ifaddr *ifa = (struct in_ifaddr *)ptr;
 struct net_device *dev = (struct net_device *)ifa->ifa_dev->dev;
 struct qeth_ipaddr *addr;
 struct qeth_card *card;

 if (dev_net(dev) != &init_net)
  return NOTIFY_DONE;

 QETH_DBF_TEXT(TRACE, 3, "ipevent");
 card = qeth_l3_get_card_from_dev(dev);
 if (!card)
  return NOTIFY_DONE;

 addr = qeth_l3_get_addr_buffer(QETH_PROT_IPV4);
 if (addr != ((void*)0)) {
  addr->u.a4.addr = ifa->ifa_address;
  addr->u.a4.mask = ifa->ifa_mask;
  addr->type = QETH_IP_TYPE_NORMAL;
 } else
  goto out;

 switch (event) {
 case 128:
  if (!qeth_l3_add_ip(card, addr))
   kfree(addr);
  break;
 case 129:
  if (!qeth_l3_delete_ip(card, addr))
   kfree(addr);
  break;
 default:
  break;
 }
 qeth_l3_set_ip_addr_list(card);
out:
 return NOTIFY_DONE;
}
