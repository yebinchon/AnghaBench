
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qeth_trap_id {int dummy; } ;
struct TYPE_3__ {int subcmd_len; int type; int action; int options; int ext; scalar_t__ cdata; int subcmd; } ;
struct TYPE_4__ {TYPE_1__ diagass; } ;
struct qeth_ipa_cmd {TYPE_2__ data; } ;
struct qeth_cmd_buffer {scalar_t__ data; } ;
struct qeth_card {int dummy; } ;
typedef enum qeth_diags_trap_action { ____Placeholder_qeth_diags_trap_action } qeth_diags_trap_action ;


 int IPA_CMD_SET_DIAG_ASS ;
 scalar_t__ IPA_PDU_HEADER_SIZE ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 int QETH_DIAGS_CMD_TRAP ;



 int SETUP ;
 struct qeth_cmd_buffer* qeth_get_ipacmd_buffer (struct qeth_card*,int ,int ) ;
 int qeth_get_trap_id (struct qeth_card*,struct qeth_trap_id*) ;
 int qeth_hw_trap_cb ;
 int qeth_send_ipa_cmd (struct qeth_card*,struct qeth_cmd_buffer*,int ,int *) ;

int qeth_hw_trap(struct qeth_card *card, enum qeth_diags_trap_action action)
{
 struct qeth_cmd_buffer *iob;
 struct qeth_ipa_cmd *cmd;

 QETH_DBF_TEXT(SETUP, 2, "diagtrap");
 iob = qeth_get_ipacmd_buffer(card, IPA_CMD_SET_DIAG_ASS, 0);
 cmd = (struct qeth_ipa_cmd *)(iob->data+IPA_PDU_HEADER_SIZE);
 cmd->data.diagass.subcmd_len = 80;
 cmd->data.diagass.subcmd = QETH_DIAGS_CMD_TRAP;
 cmd->data.diagass.type = 1;
 cmd->data.diagass.action = action;
 switch (action) {
 case 130:
  cmd->data.diagass.options = 0x0003;
  cmd->data.diagass.ext = 0x00010000 +
   sizeof(struct qeth_trap_id);
  qeth_get_trap_id(card,
   (struct qeth_trap_id *)cmd->data.diagass.cdata);
  break;
 case 128:
  cmd->data.diagass.options = 0x0001;
  break;
 case 129:
  break;
 }
 return qeth_send_ipa_cmd(card, iob, qeth_hw_trap_cb, ((void*)0));
}
