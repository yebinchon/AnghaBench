
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int command; int return_code; } ;
struct qeth_ipa_cmd {TYPE_1__ hdr; } ;
struct qeth_cmd_buffer {int data; } ;
struct TYPE_6__ {int hwtrap; int chpid; } ;
struct qeth_card {int lan_online; TYPE_3__ info; int dev; TYPE_2__* gdev; } ;
struct TYPE_5__ {int dev; } ;


 int IPA_CMD_DELCCID ;


 int IPA_CMD_SETCCID ;
 int IPA_CMD_SET_DIAG_ASS ;



 int IPA_RC_VEPA_TO_VEB_TRANSITION ;
 scalar_t__ IS_IPA (int ) ;
 scalar_t__ IS_IPA_REPLY (struct qeth_ipa_cmd*) ;
 scalar_t__ PDU_ENCAPSULATION (int ) ;
 int QETH_CARD_IFNAME (struct qeth_card*) ;
 int QETH_DBF_MESSAGE (int,char*) ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 int TRACE ;
 int dev_err (int *,char*,int ) ;
 int dev_info (int *,char*,int ,int ) ;
 int dev_warn (int *,char*,int ,int ) ;
 int netif_carrier_off (int ) ;
 int netif_carrier_ok (int ) ;
 int netif_carrier_on (int ) ;
 int qeth_close_dev (struct qeth_card*) ;
 int qeth_issue_ipa_msg (struct qeth_ipa_cmd*,int ,struct qeth_card*) ;
 int qeth_schedule_recovery (struct qeth_card*) ;

__attribute__((used)) static struct qeth_ipa_cmd *qeth_check_ipa_data(struct qeth_card *card,
  struct qeth_cmd_buffer *iob)
{
 struct qeth_ipa_cmd *cmd = ((void*)0);

 QETH_DBF_TEXT(TRACE, 5, "chkipad");
 if (IS_IPA(iob->data)) {
  cmd = (struct qeth_ipa_cmd *) PDU_ENCAPSULATION(iob->data);
  if (IS_IPA_REPLY(cmd)) {
   if (cmd->hdr.command != IPA_CMD_SETCCID &&
       cmd->hdr.command != IPA_CMD_DELCCID &&
       cmd->hdr.command != 132 &&
       cmd->hdr.command != IPA_CMD_SET_DIAG_ASS)
    qeth_issue_ipa_msg(cmd,
      cmd->hdr.return_code, card);
   return cmd;
  } else {
   switch (cmd->hdr.command) {
   case 129:
    if (cmd->hdr.return_code ==
      IPA_RC_VEPA_TO_VEB_TRANSITION) {
     dev_err(&card->gdev->dev,
        "Interface %s is down because the "
        "adjacent port is no longer in "
        "reflective relay mode\n",
        QETH_CARD_IFNAME(card));
     qeth_close_dev(card);
    } else {
     dev_warn(&card->gdev->dev,
        "The link for interface %s on CHPID"
        " 0x%X failed\n",
        QETH_CARD_IFNAME(card),
        card->info.chpid);
     qeth_issue_ipa_msg(cmd,
      cmd->hdr.return_code, card);
    }
    card->lan_online = 0;
    if (card->dev && netif_carrier_ok(card->dev))
     netif_carrier_off(card->dev);
    return ((void*)0);
   case 130:
    dev_info(&card->gdev->dev,
        "The link for %s on CHPID 0x%X has"
        " been restored\n",
        QETH_CARD_IFNAME(card),
        card->info.chpid);
    netif_carrier_on(card->dev);
    card->lan_online = 1;
    if (card->info.hwtrap)
     card->info.hwtrap = 2;
    qeth_schedule_recovery(card);
    return ((void*)0);
   case 132:
    return cmd;
   case 131:
    QETH_DBF_TEXT(TRACE, 3, "irla");
    break;
   case 128:
    QETH_DBF_TEXT(TRACE, 3, "urla");
    break;
   default:
    QETH_DBF_MESSAGE(2, "Received data is IPA "
        "but not a reply!\n");
    break;
   }
  }
 }
 return cmd;
}
