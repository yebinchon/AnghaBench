
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct qeth_ipacmd_setadpparms {int dummy; } ;
struct TYPE_4__ {int mode; } ;
struct TYPE_5__ {TYPE_1__ data; } ;
struct TYPE_6__ {TYPE_2__ setadapterparms; } ;
struct qeth_ipa_cmd {TYPE_3__ data; } ;
struct qeth_cmd_buffer {scalar_t__ data; } ;
struct qeth_card {int dummy; } ;
typedef int __u32 ;


 scalar_t__ IPA_PDU_HEADER_SIZE ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 int TRACE ;
 int qeth_default_setadapterparms_cb ;
 struct qeth_cmd_buffer* qeth_get_adapter_cmd (struct qeth_card*,int ,int) ;
 int qeth_send_ipa_cmd (struct qeth_card*,struct qeth_cmd_buffer*,int ,int *) ;

__attribute__((used)) static int qeth_l3_send_setadp_mode(struct qeth_card *card, __u32 command,
     __u32 mode)
{
 int rc;
 struct qeth_cmd_buffer *iob;
 struct qeth_ipa_cmd *cmd;

 QETH_DBF_TEXT(TRACE, 4, "adpmode");

 iob = qeth_get_adapter_cmd(card, command,
       sizeof(struct qeth_ipacmd_setadpparms));
 cmd = (struct qeth_ipa_cmd *)(iob->data+IPA_PDU_HEADER_SIZE);
 cmd->data.setadapterparms.data.mode = mode;
 rc = qeth_send_ipa_cmd(card, iob, qeth_default_setadapterparms_cb,
          ((void*)0));
 return rc;
}
