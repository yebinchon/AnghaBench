
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qeth_cmd_buffer {int data; int callback; } ;
struct TYPE_2__ {int pdu_hdr_ack; int pdu_hdr; int trans_hdr; } ;
struct qeth_card {TYPE_1__ seqno; int write; } ;


 int CTRL ;
 int QETH_DBF_CTRL_LEN ;
 int QETH_DBF_HEX (int ,int,int ,int ) ;
 int QETH_PDU_HEADER_ACK_SEQ_NO (int ) ;
 int QETH_PDU_HEADER_SEQ_NO (int ) ;
 int QETH_SEQ_NO_LENGTH ;
 int QETH_TRANSPORT_HEADER_SEQ_NO (int ) ;
 int memcpy (int ,int *,int ) ;
 int qeth_release_buffer ;
 int qeth_setup_ccw (int *,int ,int) ;

void qeth_prepare_control_data(struct qeth_card *card, int len,
  struct qeth_cmd_buffer *iob)
{
 qeth_setup_ccw(&card->write, iob->data, len);
 iob->callback = qeth_release_buffer;

 memcpy(QETH_TRANSPORT_HEADER_SEQ_NO(iob->data),
        &card->seqno.trans_hdr, QETH_SEQ_NO_LENGTH);
 card->seqno.trans_hdr++;
 memcpy(QETH_PDU_HEADER_SEQ_NO(iob->data),
        &card->seqno.pdu_hdr, QETH_SEQ_NO_LENGTH);
 card->seqno.pdu_hdr++;
 memcpy(QETH_PDU_HEADER_ACK_SEQ_NO(iob->data),
        &card->seqno.pdu_hdr_ack, QETH_SEQ_NO_LENGTH);
 QETH_DBF_HEX(CTRL, 2, iob->data, QETH_DBF_CTRL_LEN);
}
