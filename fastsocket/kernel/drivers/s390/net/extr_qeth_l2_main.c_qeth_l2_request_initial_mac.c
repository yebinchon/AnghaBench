
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; scalar_t__ guestlan; } ;
struct qeth_card {TYPE_2__* dev; TYPE_1__ info; } ;
struct TYPE_4__ {int dev_addr; } ;


 int CARD_BUS_ID (struct qeth_card*) ;
 int IPA_SETADAPTERPARMS ;
 int OSA_ADDR_LEN ;
 scalar_t__ QETH_CARD_TYPE_IQD ;
 scalar_t__ QETH_CARD_TYPE_OSM ;
 scalar_t__ QETH_CARD_TYPE_OSX ;
 int QETH_DBF_HEX (int ,int,int ,int ) ;
 int QETH_DBF_MESSAGE (int,char*,int,int) ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 int QETH_DBF_TEXT_ (int ,int,char*,int) ;
 int SETUP ;
 int memcpy (int ,char*,int) ;
 scalar_t__ qeth_is_supported (struct qeth_card*,int ) ;
 int qeth_query_setadapterparms (struct qeth_card*) ;
 int qeth_setadpparms_change_macaddr (struct qeth_card*) ;
 int random_ether_addr (int ) ;

__attribute__((used)) static int qeth_l2_request_initial_mac(struct qeth_card *card)
{
 int rc = 0;
 char vendor_pre[] = {0x02, 0x00, 0x00};

 QETH_DBF_TEXT(SETUP, 2, "doL2init");
 QETH_DBF_TEXT_(SETUP, 2, "doL2%s", CARD_BUS_ID(card));

 if (qeth_is_supported(card, IPA_SETADAPTERPARMS)) {
  rc = qeth_query_setadapterparms(card);
  if (rc) {
   QETH_DBF_MESSAGE(2, "could not query adapter "
    "parameters on device %s: x%x\n",
    CARD_BUS_ID(card), rc);
  }
 }

 if (card->info.type == QETH_CARD_TYPE_IQD ||
     card->info.type == QETH_CARD_TYPE_OSM ||
     card->info.type == QETH_CARD_TYPE_OSX ||
     card->info.guestlan) {
  rc = qeth_setadpparms_change_macaddr(card);
  if (rc) {
   QETH_DBF_MESSAGE(2, "couldn't get MAC address on "
    "device %s: x%x\n", CARD_BUS_ID(card), rc);
   QETH_DBF_TEXT_(SETUP, 2, "1err%d", rc);
   return rc;
  }
  QETH_DBF_HEX(SETUP, 2, card->dev->dev_addr, OSA_ADDR_LEN);
 } else {
  random_ether_addr(card->dev->dev_addr);
  memcpy(card->dev->dev_addr, vendor_pre, 3);
 }
 return 0;
}
