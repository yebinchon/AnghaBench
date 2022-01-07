
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qeth_card {TYPE_1__* gdev; } ;
struct TYPE_2__ {int dev; } ;


 int IPA_ARP_PROCESSING ;
 int IPA_CMD_ASS_START ;
 int QETH_CARD_IFNAME (struct qeth_card*) ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 int TRACE ;
 int dev_info (int *,char*,int ) ;
 int dev_warn (int *,char*,int ) ;
 int qeth_is_supported (struct qeth_card*,int ) ;
 int qeth_l3_send_simple_setassparms (struct qeth_card*,int ,int ,int ) ;

__attribute__((used)) static int qeth_l3_start_ipa_arp_processing(struct qeth_card *card)
{
 int rc;

 QETH_DBF_TEXT(TRACE, 3, "ipaarp");

 if (!qeth_is_supported(card, IPA_ARP_PROCESSING)) {
  dev_info(&card->gdev->dev,
   "ARP processing not supported on %s!\n",
   QETH_CARD_IFNAME(card));
  return 0;
 }
 rc = qeth_l3_send_simple_setassparms(card, IPA_ARP_PROCESSING,
     IPA_CMD_ASS_START, 0);
 if (rc) {
  dev_warn(&card->gdev->dev,
   "Starting ARP processing support for %s failed\n",
   QETH_CARD_IFNAME(card));
 }
 return rc;
}
