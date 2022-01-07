
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qeth_cmd_buffer {int data; } ;
struct TYPE_2__ {int ulp_connection_r; } ;
struct qeth_card {TYPE_1__ token; } ;


 int * IPA_PDU_HEADER ;
 scalar_t__ IPA_PDU_HEADER_SIZE ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 int QETH_IPA_CMD_DEST_ADDR (int ) ;
 scalar_t__ QETH_MPC_TOKEN_LENGTH ;
 int TRACE ;
 int memcpy (int ,int *,scalar_t__) ;
 int qeth_send_control_data (struct qeth_card*,scalar_t__,struct qeth_cmd_buffer*,int (*) (struct qeth_card*,struct qeth_reply*,unsigned long),void*) ;

__attribute__((used)) static int qeth_l3_send_ipa_arp_cmd(struct qeth_card *card,
  struct qeth_cmd_buffer *iob, int len,
  int (*reply_cb)(struct qeth_card *, struct qeth_reply *,
   unsigned long),
  void *reply_param)
{
 QETH_DBF_TEXT(TRACE, 4, "sendarp");

 memcpy(iob->data, IPA_PDU_HEADER, IPA_PDU_HEADER_SIZE);
 memcpy(QETH_IPA_CMD_DEST_ADDR(iob->data),
        &card->token.ulp_connection_r, QETH_MPC_TOKEN_LENGTH);
 return qeth_send_control_data(card, IPA_PDU_HEADER_SIZE + len, iob,
          reply_cb, reply_param);
}
