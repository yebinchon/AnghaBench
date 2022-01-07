
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
struct qeth_ipaddr {int type; TYPE_3__ u; } ;
struct qeth_card {int dummy; } ;
typedef enum qeth_prot_versions { ____Placeholder_qeth_prot_versions } qeth_prot_versions ;


 int QETH_DBF_TEXT (int ,int,char*) ;
 int QETH_IP_TYPE_VIPA ;
 int QETH_PROT_IPV4 ;
 int QETH_PROT_IPV6 ;
 int TRACE ;
 int kfree (struct qeth_ipaddr*) ;
 int memcpy (int *,int const*,int) ;
 int qeth_l3_delete_ip (struct qeth_card*,struct qeth_ipaddr*) ;
 struct qeth_ipaddr* qeth_l3_get_addr_buffer (int) ;
 int qeth_l3_set_ip_addr_list (struct qeth_card*) ;

void qeth_l3_del_vipa(struct qeth_card *card, enum qeth_prot_versions proto,
       const u8 *addr)
{
 struct qeth_ipaddr *ipaddr;

 ipaddr = qeth_l3_get_addr_buffer(proto);
 if (ipaddr) {
  if (proto == QETH_PROT_IPV4) {
   QETH_DBF_TEXT(TRACE, 2, "delvipa4");
   memcpy(&ipaddr->u.a4.addr, addr, 4);
   ipaddr->u.a4.mask = 0;
  } else if (proto == QETH_PROT_IPV6) {
   QETH_DBF_TEXT(TRACE, 2, "delvipa6");
   memcpy(&ipaddr->u.a6.addr, addr, 16);
   ipaddr->u.a6.pfxlen = 0;
  }
  ipaddr->type = QETH_IP_TYPE_VIPA;
 } else
  return;
 if (!qeth_l3_delete_ip(card, ipaddr))
  kfree(ipaddr);
 qeth_l3_set_ip_addr_list(card);
}
