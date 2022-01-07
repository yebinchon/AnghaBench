
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qeth_cmd_buffer {int data; } ;
struct TYPE_2__ {char ulp_connection_r; } ;
struct qeth_card {TYPE_1__ token; } ;


 char* IPA_PDU_HEADER ;
 int IPA_PDU_HEADER_SIZE ;
 int QETH_IPA_CMD_DEST_ADDR (int ) ;
 int QETH_IPA_CMD_PROT_TYPE (int ) ;
 int QETH_MPC_TOKEN_LENGTH ;
 int memcpy (int ,char*,int) ;

void qeth_prepare_ipa_cmd(struct qeth_card *card, struct qeth_cmd_buffer *iob,
  char prot_type)
{
 memcpy(iob->data, IPA_PDU_HEADER, IPA_PDU_HEADER_SIZE);
 memcpy(QETH_IPA_CMD_PROT_TYPE(iob->data), &prot_type, 1);
 memcpy(QETH_IPA_CMD_DEST_ADDR(iob->data),
        &card->token.ulp_connection_r, QETH_MPC_TOKEN_LENGTH);
}
