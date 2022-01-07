
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct qeth_reply {int dummy; } ;
struct TYPE_9__ {int mac; } ;
struct TYPE_10__ {TYPE_3__ setdelmac; } ;
struct TYPE_7__ {int return_code; } ;
struct qeth_ipa_cmd {TYPE_4__ data; TYPE_1__ hdr; } ;
struct TYPE_8__ {int mac_bits; } ;
struct qeth_card {TYPE_6__* dev; TYPE_5__* gdev; TYPE_2__ info; } ;
struct TYPE_12__ {int name; int dev_addr; } ;
struct TYPE_11__ {int dev; } ;


 int EIO ;




 int OSA_ADDR_LEN ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 int QETH_DBF_TEXT_ (int ,int,char*,int) ;
 int QETH_LAYER2_MAC_REGISTERED ;
 int TRACE ;
 int dev_info (int *,char*,int ,int ) ;
 int dev_warn (int *,char*,int ) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static int qeth_l2_send_setmac_cb(struct qeth_card *card,
      struct qeth_reply *reply,
      unsigned long data)
{
 struct qeth_ipa_cmd *cmd;

 QETH_DBF_TEXT(TRACE, 2, "L2Smaccb");
 cmd = (struct qeth_ipa_cmd *) data;
 if (cmd->hdr.return_code) {
  QETH_DBF_TEXT_(TRACE, 2, "L2er%x", cmd->hdr.return_code);
  card->info.mac_bits &= ~QETH_LAYER2_MAC_REGISTERED;
  switch (cmd->hdr.return_code) {
  case 130:
  case 131:
   dev_warn(&card->gdev->dev,
    "MAC address %pM already exists\n",
    cmd->data.setdelmac.mac);
   break;
  case 128:
  case 129:
   dev_warn(&card->gdev->dev,
    "MAC address %pM is not authorized\n",
    cmd->data.setdelmac.mac);
   break;
  default:
   break;
  }
  cmd->hdr.return_code = -EIO;
 } else {
  card->info.mac_bits |= QETH_LAYER2_MAC_REGISTERED;
  memcpy(card->dev->dev_addr, cmd->data.setdelmac.mac,
         OSA_ADDR_LEN);
  dev_info(&card->gdev->dev,
   "MAC address %pM successfully registered on "
   "device %s\n",
   card->dev->dev_addr, card->dev->name);
 }
 return 0;
}
