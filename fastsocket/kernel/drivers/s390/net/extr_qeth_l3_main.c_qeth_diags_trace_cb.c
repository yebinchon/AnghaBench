
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct qeth_reply {int dummy; } ;
struct TYPE_9__ {int action; } ;
struct TYPE_10__ {TYPE_4__ diagass; } ;
struct TYPE_6__ {int return_code; } ;
struct qeth_ipa_cmd {TYPE_5__ data; TYPE_1__ hdr; } ;
struct TYPE_7__ {int promisc_mode; } ;
struct qeth_card {TYPE_3__* gdev; TYPE_2__ info; } ;
typedef int __u16 ;
struct TYPE_8__ {int dev; } ;




 int QETH_CARD_IFNAME (struct qeth_card*) ;
 int QETH_DBF_MESSAGE (int,char*,int,int ) ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 int QETH_DBF_TEXT_ (int ,int,char*,int) ;



 int SETUP ;
 int SET_PROMISC_MODE_OFF ;
 int SET_PROMISC_MODE_ON ;
 int TRACE ;
 int dev_info (int *,char*) ;
 int dev_warn (int *,char*) ;

__attribute__((used)) static int
qeth_diags_trace_cb(struct qeth_card *card, struct qeth_reply *reply,
       unsigned long data)
{
 struct qeth_ipa_cmd *cmd;
 __u16 rc;

 QETH_DBF_TEXT(SETUP, 2, "diastrcb");

 cmd = (struct qeth_ipa_cmd *)data;
 rc = cmd->hdr.return_code;
 if (rc) {
  QETH_DBF_TEXT_(TRACE, 2, "dxter%x", rc);
  if (cmd->data.diagass.action == 129) {
   switch (rc) {
   case 132:
    dev_warn(&card->gdev->dev, "The device is not "
     "authorized to run as a HiperSockets "
     "network traffic analyzer\n");
    break;
   case 131:
    dev_warn(&card->gdev->dev, "A HiperSockets "
     "network traffic analyzer is already "
     "active in the HiperSockets LAN\n");
    break;
   default:
    break;
   }
  }
  return 0;
 }

 switch (cmd->data.diagass.action) {
 case 128:
  break;
 case 130:
  card->info.promisc_mode = SET_PROMISC_MODE_OFF;
  dev_info(&card->gdev->dev, "The HiperSockets network traffic "
   "analyzer is deactivated\n");
  break;
 case 129:
  card->info.promisc_mode = SET_PROMISC_MODE_ON;
  dev_info(&card->gdev->dev, "The HiperSockets network traffic "
   "analyzer is activated\n");
  break;
 default:
  QETH_DBF_MESSAGE(2, "Unknown sniffer action (0x%04x) on %s\n",
   cmd->data.diagass.action, QETH_CARD_IFNAME(card));
 }

 return 0;
}
