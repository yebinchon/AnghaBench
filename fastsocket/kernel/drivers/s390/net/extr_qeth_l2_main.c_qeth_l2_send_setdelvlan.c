
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int vlan_id; } ;
struct TYPE_4__ {TYPE_1__ setdelvlan; } ;
struct qeth_ipa_cmd {TYPE_2__ data; } ;
struct qeth_cmd_buffer {scalar_t__ data; } ;
struct qeth_card {int dummy; } ;
typedef enum qeth_ipa_cmds { ____Placeholder_qeth_ipa_cmds } qeth_ipa_cmds ;
typedef int __u16 ;


 scalar_t__ IPA_PDU_HEADER_SIZE ;
 int QETH_DBF_TEXT_ (int ,int,char*,int) ;
 int QETH_PROT_IPV4 ;
 int TRACE ;
 struct qeth_cmd_buffer* qeth_get_ipacmd_buffer (struct qeth_card*,int,int ) ;
 int qeth_l2_send_setdelvlan_cb ;
 int qeth_send_ipa_cmd (struct qeth_card*,struct qeth_cmd_buffer*,int ,int *) ;

__attribute__((used)) static int qeth_l2_send_setdelvlan(struct qeth_card *card, __u16 i,
    enum qeth_ipa_cmds ipacmd)
{
 struct qeth_ipa_cmd *cmd;
 struct qeth_cmd_buffer *iob;

 QETH_DBF_TEXT_(TRACE, 4, "L2sdv%x", ipacmd);
 iob = qeth_get_ipacmd_buffer(card, ipacmd, QETH_PROT_IPV4);
 cmd = (struct qeth_ipa_cmd *)(iob->data+IPA_PDU_HEADER_SIZE);
 cmd->data.setdelvlan.vlan_id = i;
 return qeth_send_ipa_cmd(card, iob,
     qeth_l2_send_setdelvlan_cb, ((void*)0));
}
