
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qeth_card {TYPE_1__* gdev; } ;
struct TYPE_2__ {int dev; } ;


 int EOPNOTSUPP ;
 int IPA_CMD_ASS_START ;
 int IPA_SOURCE_MAC ;
 int QETH_CARD_IFNAME (struct qeth_card*) ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 int TRACE ;
 int dev_info (int *,char*,int ) ;
 int dev_warn (int *,char*,int ) ;
 int qeth_is_supported (struct qeth_card*,int ) ;
 int qeth_l3_send_simple_setassparms (struct qeth_card*,int ,int ,int ) ;

__attribute__((used)) static int qeth_l3_start_ipa_source_mac(struct qeth_card *card)
{
 int rc;

 QETH_DBF_TEXT(TRACE, 3, "stsrcmac");

 if (!qeth_is_supported(card, IPA_SOURCE_MAC)) {
  dev_info(&card->gdev->dev,
   "Inbound source MAC-address not supported on %s\n",
   QETH_CARD_IFNAME(card));
  return -EOPNOTSUPP;
 }

 rc = qeth_l3_send_simple_setassparms(card, IPA_SOURCE_MAC,
       IPA_CMD_ASS_START, 0);
 if (rc)
  dev_warn(&card->gdev->dev,
   "Starting source MAC-address support for %s failed\n",
   QETH_CARD_IFNAME(card));
 return rc;
}
