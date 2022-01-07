
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int addr; } ;
struct TYPE_4__ {TYPE_1__ a4; } ;
struct qeth_ipaddr {int is_multicast; int mac; TYPE_2__ u; } ;
struct qeth_card {int dummy; } ;
struct ip_mc_list {int multiaddr; struct ip_mc_list* next; } ;
struct in_device {int dev; struct ip_mc_list* mc_list; } ;


 int MAX_ADDR_LEN ;
 int OSA_ADDR_LEN ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 int QETH_PROT_IPV4 ;
 int TRACE ;
 int kfree (struct qeth_ipaddr*) ;
 int memcpy (int ,char*,int ) ;
 int qeth_l3_add_ip (struct qeth_card*,struct qeth_ipaddr*) ;
 struct qeth_ipaddr* qeth_l3_get_addr_buffer (int ) ;
 int qeth_l3_get_mac_for_ipm (int ,char*,int ) ;

__attribute__((used)) static void qeth_l3_add_mc(struct qeth_card *card, struct in_device *in4_dev)
{
 struct qeth_ipaddr *ipm;
 struct ip_mc_list *im4;
 char buf[MAX_ADDR_LEN];

 QETH_DBF_TEXT(TRACE, 4, "addmc");
 for (im4 = in4_dev->mc_list; im4; im4 = im4->next) {
  qeth_l3_get_mac_for_ipm(im4->multiaddr, buf, in4_dev->dev);
  ipm = qeth_l3_get_addr_buffer(QETH_PROT_IPV4);
  if (!ipm)
   continue;
  ipm->u.a4.addr = im4->multiaddr;
  memcpy(ipm->mac, buf, OSA_ADDR_LEN);
  ipm->is_multicast = 1;
  if (!qeth_l3_add_ip(card, ipm))
   kfree(ipm);
 }
}
