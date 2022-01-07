
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qeth_cmd_buffer {int dummy; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct TYPE_3__ {scalar_t__ layer2; } ;
struct qeth_card {TYPE_2__ info; TYPE_1__ options; } ;


 int ETIME ;
 int IPA_CMD_LENGTH ;
 scalar_t__ QETH_CARD_TYPE_OSN ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 char QETH_PROT_LAYER2 ;
 char QETH_PROT_OSN2 ;
 char QETH_PROT_TCPIP ;
 int TRACE ;
 int qeth_clear_ipacmd_list (struct qeth_card*) ;
 int qeth_prepare_ipa_cmd (struct qeth_card*,struct qeth_cmd_buffer*,char) ;
 int qeth_schedule_recovery (struct qeth_card*) ;
 int qeth_send_control_data (struct qeth_card*,int ,struct qeth_cmd_buffer*,int (*) (struct qeth_card*,struct qeth_reply*,unsigned long),void*) ;

int qeth_send_ipa_cmd(struct qeth_card *card, struct qeth_cmd_buffer *iob,
  int (*reply_cb)(struct qeth_card *, struct qeth_reply*,
   unsigned long),
  void *reply_param)
{
 int rc;
 char prot_type;

 QETH_DBF_TEXT(TRACE, 4, "sendipa");

 if (card->options.layer2)
  if (card->info.type == QETH_CARD_TYPE_OSN)
   prot_type = QETH_PROT_OSN2;
  else
   prot_type = QETH_PROT_LAYER2;
 else
  prot_type = QETH_PROT_TCPIP;
 qeth_prepare_ipa_cmd(card, iob, prot_type);
 rc = qeth_send_control_data(card, IPA_CMD_LENGTH,
      iob, reply_cb, reply_param);
 if (rc == -ETIME) {
  qeth_clear_ipacmd_list(card);
  qeth_schedule_recovery(card);
 }
 return rc;
}
