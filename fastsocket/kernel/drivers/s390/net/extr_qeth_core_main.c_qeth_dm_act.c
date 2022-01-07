
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qeth_cmd_buffer {int data; } ;
struct TYPE_2__ {int ulp_connection_r; int cm_connection_r; } ;
struct qeth_card {TYPE_1__ token; int write; } ;


 int * DM_ACT ;
 int DM_ACT_SIZE ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 int QETH_DM_ACT_CONNECTION_TOKEN (int ) ;
 int QETH_DM_ACT_DEST_ADDR (int ) ;
 int QETH_MPC_TOKEN_LENGTH ;
 int SETUP ;
 int memcpy (int ,int *,int ) ;
 int qeth_send_control_data (struct qeth_card*,int ,struct qeth_cmd_buffer*,int *,int *) ;
 struct qeth_cmd_buffer* qeth_wait_for_buffer (int *) ;

__attribute__((used)) static int qeth_dm_act(struct qeth_card *card)
{
 int rc;
 struct qeth_cmd_buffer *iob;

 QETH_DBF_TEXT(SETUP, 2, "dmact");

 iob = qeth_wait_for_buffer(&card->write);
 memcpy(iob->data, DM_ACT, DM_ACT_SIZE);

 memcpy(QETH_DM_ACT_DEST_ADDR(iob->data),
        &card->token.cm_connection_r, QETH_MPC_TOKEN_LENGTH);
 memcpy(QETH_DM_ACT_CONNECTION_TOKEN(iob->data),
        &card->token.ulp_connection_r, QETH_MPC_TOKEN_LENGTH);
 rc = qeth_send_control_data(card, DM_ACT_SIZE, iob, ((void*)0), ((void*)0));
 return rc;
}
