
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct qeth_cmd_buffer {int data; } ;
struct TYPE_6__ {scalar_t__ type; char* portname; scalar_t__ portno; } ;
struct TYPE_5__ {char cm_connection_r; char ulp_filter_w; } ;
struct TYPE_4__ {scalar_t__ layer2; } ;
struct qeth_card {TYPE_3__ info; TYPE_2__ token; TYPE_1__ options; int write; } ;
typedef scalar_t__ __u8 ;


 scalar_t__ QETH_CARD_TYPE_OSN ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 int QETH_MPC_TOKEN_LENGTH ;
 char QETH_PROT_LAYER2 ;
 char QETH_PROT_OSN2 ;
 char QETH_PROT_TCPIP ;
 int QETH_ULP_ENABLE_DEST_ADDR (int ) ;
 int QETH_ULP_ENABLE_FILTER_TOKEN (int ) ;
 scalar_t__* QETH_ULP_ENABLE_LINKNUM (int ) ;
 int QETH_ULP_ENABLE_PORTNAME_AND_LL (int ) ;
 int QETH_ULP_ENABLE_PROT_TYPE (int ) ;
 int SETUP ;
 char* ULP_ENABLE ;
 int ULP_ENABLE_SIZE ;
 int memcpy (int ,char*,int) ;
 int qeth_send_control_data (struct qeth_card*,int,struct qeth_cmd_buffer*,int ,int *) ;
 int qeth_ulp_enable_cb ;
 struct qeth_cmd_buffer* qeth_wait_for_buffer (int *) ;

__attribute__((used)) static int qeth_ulp_enable(struct qeth_card *card)
{
 int rc;
 char prot_type;
 struct qeth_cmd_buffer *iob;


 QETH_DBF_TEXT(SETUP, 2, "ulpenabl");

 iob = qeth_wait_for_buffer(&card->write);
 memcpy(iob->data, ULP_ENABLE, ULP_ENABLE_SIZE);

 *(QETH_ULP_ENABLE_LINKNUM(iob->data)) =
  (__u8) card->info.portno;
 if (card->options.layer2)
  if (card->info.type == QETH_CARD_TYPE_OSN)
   prot_type = QETH_PROT_OSN2;
  else
   prot_type = QETH_PROT_LAYER2;
 else
  prot_type = QETH_PROT_TCPIP;

 memcpy(QETH_ULP_ENABLE_PROT_TYPE(iob->data), &prot_type, 1);
 memcpy(QETH_ULP_ENABLE_DEST_ADDR(iob->data),
        &card->token.cm_connection_r, QETH_MPC_TOKEN_LENGTH);
 memcpy(QETH_ULP_ENABLE_FILTER_TOKEN(iob->data),
        &card->token.ulp_filter_w, QETH_MPC_TOKEN_LENGTH);
 memcpy(QETH_ULP_ENABLE_PORTNAME_AND_LL(iob->data),
        card->info.portname, 9);
 rc = qeth_send_control_data(card, ULP_ENABLE_SIZE, iob,
        qeth_ulp_enable_cb, ((void*)0));
 return rc;

}
