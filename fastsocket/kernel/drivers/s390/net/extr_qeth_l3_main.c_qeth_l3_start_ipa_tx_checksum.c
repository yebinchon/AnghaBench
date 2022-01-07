
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tx_csum_mask; } ;
struct qeth_card {TYPE_2__* gdev; TYPE_1__ info; } ;
struct TYPE_4__ {int dev; } ;


 int IPA_CMD_ASS_ENABLE ;
 int IPA_CMD_ASS_START ;
 int IPA_OUTBOUND_CHECKSUM ;
 int QETH_CARD_IFNAME (struct qeth_card*) ;
 int dev_info (int *,char*) ;
 int dev_warn (int *,char*,int ) ;
 int qeth_is_supported (struct qeth_card*,int ) ;
 int qeth_l3_send_simple_setassparms (struct qeth_card*,int ,int ,int ) ;

__attribute__((used)) static int qeth_l3_start_ipa_tx_checksum(struct qeth_card *card)
{
 int rc = 0;

 if (!qeth_is_supported(card, IPA_OUTBOUND_CHECKSUM))
  return rc;
 rc = qeth_l3_send_simple_setassparms(card, IPA_OUTBOUND_CHECKSUM,
     IPA_CMD_ASS_START, 0);
 if (rc)
  goto err_out;
 rc = qeth_l3_send_simple_setassparms(card, IPA_OUTBOUND_CHECKSUM,
     IPA_CMD_ASS_ENABLE, card->info.tx_csum_mask);
 if (rc)
  goto err_out;
 dev_info(&card->gdev->dev, "HW TX Checksumming enabled\n");
 return rc;
err_out:
 dev_warn(&card->gdev->dev, "Enabling HW TX checksumming for %s "
  "failed, using SW TX checksumming\n", QETH_CARD_IFNAME(card));
 return rc;
}
