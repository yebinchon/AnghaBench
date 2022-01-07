
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; } ;
struct TYPE_4__ {TYPE_1__ route4; } ;
struct qeth_card {TYPE_2__ options; } ;


 int NO_ROUTER ;
 int QETH_CARD_IFNAME (struct qeth_card*) ;
 int QETH_DBF_MESSAGE (int,char*,int,int ) ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 int QETH_PROT_IPV4 ;
 int TRACE ;
 int qeth_l3_correct_routing_type (struct qeth_card*,int *,int ) ;
 int qeth_l3_send_setrouting (struct qeth_card*,int ,int ) ;

int qeth_l3_setrouting_v4(struct qeth_card *card)
{
 int rc;

 QETH_DBF_TEXT(TRACE, 3, "setrtg4");

 qeth_l3_correct_routing_type(card, &card->options.route4.type,
      QETH_PROT_IPV4);

 rc = qeth_l3_send_setrouting(card, card->options.route4.type,
      QETH_PROT_IPV4);
 if (rc) {
  card->options.route4.type = NO_ROUTER;
  QETH_DBF_MESSAGE(2, "Error (0x%04x) while setting routing type"
   " on %s. Type set to 'no router'.\n", rc,
   QETH_CARD_IFNAME(card));
 }
 return rc;
}
