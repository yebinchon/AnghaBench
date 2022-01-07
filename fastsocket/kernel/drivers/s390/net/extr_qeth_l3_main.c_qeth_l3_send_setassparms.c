
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ flags_32bit; } ;
struct TYPE_4__ {TYPE_3__ data; } ;
struct TYPE_5__ {TYPE_1__ setassparms; } ;
struct qeth_ipa_cmd {TYPE_2__ data; } ;
struct qeth_cmd_buffer {scalar_t__ data; } ;
struct qeth_card {int dummy; } ;
typedef scalar_t__ __u32 ;
typedef int __u16 ;


 scalar_t__ IPA_PDU_HEADER_SIZE ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 int TRACE ;
 int memcpy (TYPE_3__*,void*,int) ;
 int qeth_send_ipa_cmd (struct qeth_card*,struct qeth_cmd_buffer*,int (*) (struct qeth_card*,struct qeth_reply*,unsigned long),void*) ;

__attribute__((used)) static int qeth_l3_send_setassparms(struct qeth_card *card,
 struct qeth_cmd_buffer *iob, __u16 len, long data,
 int (*reply_cb)(struct qeth_card *, struct qeth_reply *,
  unsigned long),
 void *reply_param)
{
 int rc;
 struct qeth_ipa_cmd *cmd;

 QETH_DBF_TEXT(TRACE, 4, "sendassp");

 cmd = (struct qeth_ipa_cmd *)(iob->data+IPA_PDU_HEADER_SIZE);
 if (len <= sizeof(__u32))
  cmd->data.setassparms.data.flags_32bit = (__u32) data;
 else
  memcpy(&cmd->data.setassparms.data, (void *) data, len);

 rc = qeth_send_ipa_cmd(card, iob, reply_cb, reply_param);
 return rc;
}
