
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qeth_reply {int dummy; } ;
struct qeth_cmd_buffer {int rc; int data; } ;
struct TYPE_2__ {int cm_connection_r; } ;
struct qeth_card {TYPE_1__ token; } ;


 int QETH_CM_SETUP_RESP_DEST_ADDR (int ) ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 int QETH_DBF_TEXT_ (int ,int,char*,int ) ;
 int QETH_MPC_TOKEN_LENGTH ;
 int SETUP ;
 int memcpy (int *,int ,int ) ;

__attribute__((used)) static int qeth_cm_setup_cb(struct qeth_card *card, struct qeth_reply *reply,
  unsigned long data)
{

 struct qeth_cmd_buffer *iob;

 QETH_DBF_TEXT(SETUP, 2, "cmsetpcb");

 iob = (struct qeth_cmd_buffer *) data;
 memcpy(&card->token.cm_connection_r,
        QETH_CM_SETUP_RESP_DEST_ADDR(iob->data),
        QETH_MPC_TOKEN_LENGTH);
 QETH_DBF_TEXT_(SETUP, 2, "  rc%d", iob->rc);
 return 0;
}
