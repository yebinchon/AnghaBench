
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct qeth_cmd_buffer {int data; } ;
struct qeth_card {int dummy; } ;


 scalar_t__ IPA_PDU_HEADER_SIZE ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 int QETH_IPA_PDU_LEN_PDU1 (int ) ;
 int QETH_IPA_PDU_LEN_PDU2 (int ) ;
 int QETH_IPA_PDU_LEN_PDU3 (int ) ;
 int QETH_IPA_PDU_LEN_TOTAL (int ) ;
 int QETH_PROT_OSN2 ;
 int TRACE ;
 int memcpy (int ,scalar_t__*,int) ;
 int qeth_osn_send_control_data (struct qeth_card*,scalar_t__,struct qeth_cmd_buffer*) ;
 int qeth_prepare_ipa_cmd (struct qeth_card*,struct qeth_cmd_buffer*,int ) ;

__attribute__((used)) static int qeth_osn_send_ipa_cmd(struct qeth_card *card,
   struct qeth_cmd_buffer *iob, int data_len)
{
 u16 s1, s2;

 QETH_DBF_TEXT(TRACE, 4, "osndipa");

 qeth_prepare_ipa_cmd(card, iob, QETH_PROT_OSN2);
 s1 = (u16)(IPA_PDU_HEADER_SIZE + data_len);
 s2 = (u16)data_len;
 memcpy(QETH_IPA_PDU_LEN_TOTAL(iob->data), &s1, 2);
 memcpy(QETH_IPA_PDU_LEN_PDU1(iob->data), &s2, 2);
 memcpy(QETH_IPA_PDU_LEN_PDU2(iob->data), &s2, 2);
 memcpy(QETH_IPA_PDU_LEN_PDU3(iob->data), &s2, 2);
 return qeth_osn_send_control_data(card, s1, iob);
}
