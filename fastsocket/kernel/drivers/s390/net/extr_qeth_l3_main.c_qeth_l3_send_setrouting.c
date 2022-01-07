
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; } ;
struct TYPE_4__ {TYPE_1__ setrtg; } ;
struct qeth_ipa_cmd {TYPE_2__ data; } ;
struct qeth_cmd_buffer {scalar_t__ data; } ;
struct qeth_card {int dummy; } ;
typedef enum qeth_routing_types { ____Placeholder_qeth_routing_types } qeth_routing_types ;
typedef enum qeth_prot_versions { ____Placeholder_qeth_prot_versions } qeth_prot_versions ;


 int IPA_CMD_SETRTG ;
 scalar_t__ IPA_PDU_HEADER_SIZE ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 int TRACE ;
 struct qeth_cmd_buffer* qeth_get_ipacmd_buffer (struct qeth_card*,int ,int) ;
 int qeth_send_ipa_cmd (struct qeth_card*,struct qeth_cmd_buffer*,int *,int *) ;

__attribute__((used)) static int qeth_l3_send_setrouting(struct qeth_card *card,
 enum qeth_routing_types type, enum qeth_prot_versions prot)
{
 int rc;
 struct qeth_ipa_cmd *cmd;
 struct qeth_cmd_buffer *iob;

 QETH_DBF_TEXT(TRACE, 4, "setroutg");
 iob = qeth_get_ipacmd_buffer(card, IPA_CMD_SETRTG, prot);
 cmd = (struct qeth_ipa_cmd *)(iob->data+IPA_PDU_HEADER_SIZE);
 cmd->data.setrtg.type = (type);
 rc = qeth_send_ipa_cmd(card, iob, ((void*)0), ((void*)0));

 return rc;
}
