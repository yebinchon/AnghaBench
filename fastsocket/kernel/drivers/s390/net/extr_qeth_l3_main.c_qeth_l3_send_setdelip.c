
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int mask; int addr; } ;
struct TYPE_7__ {int pfxlen; int addr; } ;
struct TYPE_10__ {TYPE_3__ a4; TYPE_1__ a6; } ;
struct qeth_ipaddr {scalar_t__ proto; TYPE_4__ u; } ;
struct TYPE_11__ {unsigned int flags; int mask; int ip_addr; } ;
struct TYPE_8__ {unsigned int flags; int mask; int ip_addr; } ;
struct TYPE_12__ {TYPE_5__ setdelip4; TYPE_2__ setdelip6; } ;
struct qeth_ipa_cmd {TYPE_6__ data; } ;
struct qeth_cmd_buffer {scalar_t__ data; } ;
struct qeth_card {int dummy; } ;
struct in6_addr {int dummy; } ;
typedef int __u8 ;


 scalar_t__ IPA_PDU_HEADER_SIZE ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 int QETH_DBF_TEXT_ (int ,int,char*,unsigned int) ;
 scalar_t__ QETH_PROT_IPV6 ;
 int TRACE ;
 int memcpy (int ,int *,int) ;
 struct qeth_cmd_buffer* qeth_get_ipacmd_buffer (struct qeth_card*,int,scalar_t__) ;
 int qeth_l3_fill_netmask (int *,int ) ;
 int qeth_send_ipa_cmd (struct qeth_card*,struct qeth_cmd_buffer*,int *,int *) ;

__attribute__((used)) static int qeth_l3_send_setdelip(struct qeth_card *card,
  struct qeth_ipaddr *addr, int ipacmd, unsigned int flags)
{
 int rc;
 struct qeth_cmd_buffer *iob;
 struct qeth_ipa_cmd *cmd;
 __u8 netmask[16];

 QETH_DBF_TEXT(TRACE, 4, "setdelip");
 QETH_DBF_TEXT_(TRACE, 4, "flags%02X", flags);

 iob = qeth_get_ipacmd_buffer(card, ipacmd, addr->proto);
 cmd = (struct qeth_ipa_cmd *)(iob->data+IPA_PDU_HEADER_SIZE);
 if (addr->proto == QETH_PROT_IPV6) {
  memcpy(cmd->data.setdelip6.ip_addr, &addr->u.a6.addr,
         sizeof(struct in6_addr));
  qeth_l3_fill_netmask(netmask, addr->u.a6.pfxlen);
  memcpy(cmd->data.setdelip6.mask, netmask,
         sizeof(struct in6_addr));
  cmd->data.setdelip6.flags = flags;
 } else {
  memcpy(cmd->data.setdelip4.ip_addr, &addr->u.a4.addr, 4);
  memcpy(cmd->data.setdelip4.mask, &addr->u.a4.mask, 4);
  cmd->data.setdelip4.flags = flags;
 }

 rc = qeth_send_ipa_cmd(card, iob, ((void*)0), ((void*)0));

 return rc;
}
