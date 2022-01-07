
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int csum_mask; } ;
struct qeth_card {TYPE_2__* gdev; TYPE_1__ info; } ;
struct TYPE_4__ {int dev; } ;


 int IPA_CMD_ASS_ENABLE ;
 int IPA_CMD_ASS_START ;
 int IPA_INBOUND_CHECKSUM ;
 int QETH_CARD_IFNAME (struct qeth_card*) ;
 int dev_warn (int *,char*,int ) ;
 int qeth_l3_send_simple_setassparms (struct qeth_card*,int ,int ,int ) ;

__attribute__((used)) static int qeth_l3_send_checksum_command(struct qeth_card *card)
{
 int rc;

 rc = qeth_l3_send_simple_setassparms(card, IPA_INBOUND_CHECKSUM,
       IPA_CMD_ASS_START, 0);
 if (rc) {
  dev_warn(&card->gdev->dev, "Starting HW checksumming for %s "
   "failed, using SW checksumming\n",
   QETH_CARD_IFNAME(card));
  return rc;
 }
 rc = qeth_l3_send_simple_setassparms(card, IPA_INBOUND_CHECKSUM,
       IPA_CMD_ASS_ENABLE,
       card->info.csum_mask);
 if (rc) {
  dev_warn(&card->gdev->dev, "Enabling HW checksumming for %s "
   "failed, using SW checksumming\n",
   QETH_CARD_IFNAME(card));
  return rc;
 }
 return 0;
}
