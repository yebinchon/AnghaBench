
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qeth_cmd_buffer {int data; } ;
struct TYPE_2__ {int cm_filter_r; int cm_connection_w; int issuer_rm_r; } ;
struct qeth_card {TYPE_1__ token; int write; } ;


 int * CM_SETUP ;
 int CM_SETUP_SIZE ;
 int QETH_CM_SETUP_CONNECTION_TOKEN (int ) ;
 int QETH_CM_SETUP_DEST_ADDR (int ) ;
 int QETH_CM_SETUP_FILTER_TOKEN (int ) ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 int QETH_MPC_TOKEN_LENGTH ;
 int SETUP ;
 int memcpy (int ,int *,int ) ;
 int qeth_cm_setup_cb ;
 int qeth_send_control_data (struct qeth_card*,int ,struct qeth_cmd_buffer*,int ,int *) ;
 struct qeth_cmd_buffer* qeth_wait_for_buffer (int *) ;

__attribute__((used)) static int qeth_cm_setup(struct qeth_card *card)
{
 int rc;
 struct qeth_cmd_buffer *iob;

 QETH_DBF_TEXT(SETUP, 2, "cmsetup");

 iob = qeth_wait_for_buffer(&card->write);
 memcpy(iob->data, CM_SETUP, CM_SETUP_SIZE);
 memcpy(QETH_CM_SETUP_DEST_ADDR(iob->data),
        &card->token.issuer_rm_r, QETH_MPC_TOKEN_LENGTH);
 memcpy(QETH_CM_SETUP_CONNECTION_TOKEN(iob->data),
        &card->token.cm_connection_w, QETH_MPC_TOKEN_LENGTH);
 memcpy(QETH_CM_SETUP_FILTER_TOKEN(iob->data),
        &card->token.cm_filter_r, QETH_MPC_TOKEN_LENGTH);
 rc = qeth_send_control_data(card, CM_SETUP_SIZE, iob,
        qeth_cm_setup_cb, ((void*)0));
 return rc;

}
