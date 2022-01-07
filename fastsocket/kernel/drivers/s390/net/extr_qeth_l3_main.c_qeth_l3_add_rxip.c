
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {scalar_t__ pfxlen; int addr; } ;
struct TYPE_4__ {scalar_t__ mask; int addr; } ;
struct TYPE_6__ {TYPE_2__ a6; TYPE_1__ a4; } ;
struct qeth_ipaddr {scalar_t__ del_flags; int set_flags; int type; TYPE_3__ u; } ;
struct qeth_card {int ip_lock; int * ip_tbd_list; int ip_list; } ;
typedef enum qeth_prot_versions { ____Placeholder_qeth_prot_versions } qeth_prot_versions ;


 int EEXIST ;
 int ENOMEM ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 int QETH_IPA_SETIP_TAKEOVER_FLAG ;
 int QETH_IP_TYPE_RXIP ;
 int QETH_PROT_IPV4 ;
 int QETH_PROT_IPV6 ;
 int TRACE ;
 int kfree (struct qeth_ipaddr*) ;
 int memcpy (int *,int const*,int) ;
 int qeth_l3_add_ip (struct qeth_card*,struct qeth_ipaddr*) ;
 scalar_t__ qeth_l3_address_exists_in_list (int *,struct qeth_ipaddr*,int ) ;
 struct qeth_ipaddr* qeth_l3_get_addr_buffer (int) ;
 int qeth_l3_set_ip_addr_list (struct qeth_card*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int qeth_l3_add_rxip(struct qeth_card *card, enum qeth_prot_versions proto,
       const u8 *addr)
{
 struct qeth_ipaddr *ipaddr;
 unsigned long flags;
 int rc = 0;

 ipaddr = qeth_l3_get_addr_buffer(proto);
 if (ipaddr) {
  if (proto == QETH_PROT_IPV4) {
   QETH_DBF_TEXT(TRACE, 2, "addrxip4");
   memcpy(&ipaddr->u.a4.addr, addr, 4);
   ipaddr->u.a4.mask = 0;
  } else if (proto == QETH_PROT_IPV6) {
   QETH_DBF_TEXT(TRACE, 2, "addrxip6");
   memcpy(&ipaddr->u.a6.addr, addr, 16);
   ipaddr->u.a6.pfxlen = 0;
  }
  ipaddr->type = QETH_IP_TYPE_RXIP;
  ipaddr->set_flags = QETH_IPA_SETIP_TAKEOVER_FLAG;
  ipaddr->del_flags = 0;
 } else
  return -ENOMEM;
 spin_lock_irqsave(&card->ip_lock, flags);
 if (qeth_l3_address_exists_in_list(&card->ip_list, ipaddr, 0) ||
     qeth_l3_address_exists_in_list(card->ip_tbd_list, ipaddr, 0))
  rc = -EEXIST;
 spin_unlock_irqrestore(&card->ip_lock, flags);
 if (rc) {
  return rc;
 }
 if (!qeth_l3_add_ip(card, ipaddr))
  kfree(ipaddr);
 qeth_l3_set_ip_addr_list(card);
 return 0;
}
