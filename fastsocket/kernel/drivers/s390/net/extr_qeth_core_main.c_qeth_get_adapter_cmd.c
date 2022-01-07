
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int used_total; int seq_no; void* command_code; void* cmdlength; } ;
struct TYPE_5__ {TYPE_1__ hdr; } ;
struct TYPE_6__ {TYPE_2__ setadapterparms; } ;
struct qeth_ipa_cmd {TYPE_3__ data; } ;
struct qeth_cmd_buffer {scalar_t__ data; } ;
struct qeth_card {int dummy; } ;
typedef void* __u32 ;


 int IPA_CMD_SETADAPTERPARMS ;
 scalar_t__ IPA_PDU_HEADER_SIZE ;
 int QETH_PROT_IPV4 ;
 struct qeth_cmd_buffer* qeth_get_ipacmd_buffer (struct qeth_card*,int ,int ) ;

struct qeth_cmd_buffer *qeth_get_adapter_cmd(struct qeth_card *card,
  __u32 command, __u32 cmdlen)
{
 struct qeth_cmd_buffer *iob;
 struct qeth_ipa_cmd *cmd;

 iob = qeth_get_ipacmd_buffer(card, IPA_CMD_SETADAPTERPARMS,
         QETH_PROT_IPV4);
 cmd = (struct qeth_ipa_cmd *)(iob->data+IPA_PDU_HEADER_SIZE);
 cmd->data.setadapterparms.hdr.cmdlength = cmdlen;
 cmd->data.setadapterparms.hdr.command_code = command;
 cmd->data.setadapterparms.hdr.used_total = 1;
 cmd->data.setadapterparms.hdr.seq_no = 1;

 return iob;
}
