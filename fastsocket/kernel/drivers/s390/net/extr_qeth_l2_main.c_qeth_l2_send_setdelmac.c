
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mac; int mac_length; } ;
struct TYPE_4__ {TYPE_1__ setdelmac; } ;
struct qeth_ipa_cmd {TYPE_2__ data; } ;
struct qeth_cmd_buffer {scalar_t__ data; } ;
struct qeth_card {int dummy; } ;
typedef enum qeth_ipa_cmds { ____Placeholder_qeth_ipa_cmds } qeth_ipa_cmds ;
typedef int __u8 ;


 scalar_t__ IPA_PDU_HEADER_SIZE ;
 int OSA_ADDR_LEN ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 int QETH_PROT_IPV4 ;
 int TRACE ;
 int memcpy (int *,int *,int ) ;
 struct qeth_cmd_buffer* qeth_get_ipacmd_buffer (struct qeth_card*,int,int ) ;
 int qeth_send_ipa_cmd (struct qeth_card*,struct qeth_cmd_buffer*,int (*) (struct qeth_card*,struct qeth_reply*,unsigned long),int *) ;

__attribute__((used)) static int qeth_l2_send_setdelmac(struct qeth_card *card, __u8 *mac,
      enum qeth_ipa_cmds ipacmd,
      int (*reply_cb) (struct qeth_card *,
         struct qeth_reply*,
         unsigned long))
{
 struct qeth_ipa_cmd *cmd;
 struct qeth_cmd_buffer *iob;

 QETH_DBF_TEXT(TRACE, 2, "L2sdmac");
 iob = qeth_get_ipacmd_buffer(card, ipacmd, QETH_PROT_IPV4);
 cmd = (struct qeth_ipa_cmd *)(iob->data+IPA_PDU_HEADER_SIZE);
 cmd->data.setdelmac.mac_length = OSA_ADDR_LEN;
 memcpy(&cmd->data.setdelmac.mac, mac, OSA_ADDR_LEN);
 return qeth_send_ipa_cmd(card, iob, reply_cb, ((void*)0));
}
