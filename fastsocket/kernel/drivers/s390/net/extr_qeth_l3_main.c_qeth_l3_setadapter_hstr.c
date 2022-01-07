
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ broadcast_mode; scalar_t__ macaddr_mode; } ;
struct qeth_card {TYPE_1__ options; } ;


 int CARD_BUS_ID (struct qeth_card*) ;
 int IPA_SETADP_ALTER_MAC_ADDRESS ;
 int IPA_SETADP_SET_BROADCAST_MODE ;
 int QETH_DBF_MESSAGE (int,char*,int ,...) ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 scalar_t__ QETH_TR_BROADCAST_LOCAL ;
 scalar_t__ QETH_TR_MACADDR_CANONICAL ;
 int TRACE ;
 scalar_t__ qeth_adp_supported (struct qeth_card*,int ) ;
 int qeth_l3_send_setadp_mode (struct qeth_card*,int ,scalar_t__) ;

__attribute__((used)) static int qeth_l3_setadapter_hstr(struct qeth_card *card)
{
 int rc;

 QETH_DBF_TEXT(TRACE, 4, "adphstr");

 if (qeth_adp_supported(card, IPA_SETADP_SET_BROADCAST_MODE)) {
  rc = qeth_l3_send_setadp_mode(card,
     IPA_SETADP_SET_BROADCAST_MODE,
     card->options.broadcast_mode);
  if (rc)
   QETH_DBF_MESSAGE(2, "couldn't set broadcast mode on "
       "device %s: x%x\n",
       CARD_BUS_ID(card), rc);
  rc = qeth_l3_send_setadp_mode(card,
     IPA_SETADP_ALTER_MAC_ADDRESS,
     card->options.macaddr_mode);
  if (rc)
   QETH_DBF_MESSAGE(2, "couldn't set macaddr mode on "
       "device %s: x%x\n", CARD_BUS_ID(card), rc);
  return rc;
 }
 if (card->options.broadcast_mode == QETH_TR_BROADCAST_LOCAL)
  QETH_DBF_MESSAGE(2, "set adapter parameters not available "
      "to set broadcast mode, using ALLRINGS "
      "on device %s:\n", CARD_BUS_ID(card));
 if (card->options.macaddr_mode == QETH_TR_MACADDR_CANONICAL)
  QETH_DBF_MESSAGE(2, "set adapter parameters not available "
      "to set macaddr mode, using NONCANONICAL "
      "on device %s:\n", CARD_BUS_ID(card));
 return 0;
}
