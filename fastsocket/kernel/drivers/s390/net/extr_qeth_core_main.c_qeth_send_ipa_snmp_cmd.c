
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct qeth_cmd_buffer {int data; } ;
struct TYPE_2__ {scalar_t__ ulp_connection_r; } ;
struct qeth_card {TYPE_1__ token; } ;


 scalar_t__* IPA_PDU_HEADER ;
 int IPA_PDU_HEADER_SIZE ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 int QETH_IPA_CMD_DEST_ADDR (int ) ;
 int QETH_IPA_PDU_LEN_PDU1 (int ) ;
 int QETH_IPA_PDU_LEN_PDU2 (int ) ;
 int QETH_IPA_PDU_LEN_PDU3 (int ) ;
 int QETH_IPA_PDU_LEN_TOTAL (int ) ;
 int QETH_MPC_TOKEN_LENGTH ;
 int TRACE ;
 int memcpy (int ,scalar_t__*,int) ;
 int qeth_send_control_data (struct qeth_card*,int,struct qeth_cmd_buffer*,int (*) (struct qeth_card*,struct qeth_reply*,unsigned long),void*) ;

__attribute__((used)) static int qeth_send_ipa_snmp_cmd(struct qeth_card *card,
  struct qeth_cmd_buffer *iob, int len,
  int (*reply_cb)(struct qeth_card *, struct qeth_reply *,
   unsigned long),
  void *reply_param)
{
 u16 s1, s2;

 QETH_DBF_TEXT(TRACE, 4, "sendsnmp");

 memcpy(iob->data, IPA_PDU_HEADER, IPA_PDU_HEADER_SIZE);
 memcpy(QETH_IPA_CMD_DEST_ADDR(iob->data),
        &card->token.ulp_connection_r, QETH_MPC_TOKEN_LENGTH);

 s1 = (u32) IPA_PDU_HEADER_SIZE + len;
 s2 = (u32) len;
 memcpy(QETH_IPA_PDU_LEN_TOTAL(iob->data), &s1, 2);
 memcpy(QETH_IPA_PDU_LEN_PDU1(iob->data), &s2, 2);
 memcpy(QETH_IPA_PDU_LEN_PDU2(iob->data), &s2, 2);
 memcpy(QETH_IPA_PDU_LEN_PDU3(iob->data), &s2, 2);
 return qeth_send_control_data(card, IPA_PDU_HEADER_SIZE + len, iob,
          reply_cb, reply_param);
}
