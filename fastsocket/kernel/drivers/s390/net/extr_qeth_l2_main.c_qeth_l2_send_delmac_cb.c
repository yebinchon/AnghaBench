
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qeth_reply {int dummy; } ;
struct TYPE_4__ {int return_code; } ;
struct qeth_ipa_cmd {TYPE_2__ hdr; } ;
struct TYPE_3__ {int mac_bits; } ;
struct qeth_card {TYPE_1__ info; } ;


 int EIO ;
 int IPA_RC_L2_MAC_NOT_FOUND ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 int QETH_DBF_TEXT_ (int ,int,char*,int) ;
 int QETH_LAYER2_MAC_REGISTERED ;
 int TRACE ;

__attribute__((used)) static int qeth_l2_send_delmac_cb(struct qeth_card *card,
      struct qeth_reply *reply,
      unsigned long data)
{
 struct qeth_ipa_cmd *cmd;

 QETH_DBF_TEXT(TRACE, 2, "L2Dmaccb");
 cmd = (struct qeth_ipa_cmd *) data;
 if (cmd->hdr.return_code) {
  QETH_DBF_TEXT_(TRACE, 2, "err%d", cmd->hdr.return_code);
  if (cmd->hdr.return_code == IPA_RC_L2_MAC_NOT_FOUND) {
   card->info.mac_bits &= ~QETH_LAYER2_MAC_REGISTERED;
   cmd->hdr.return_code = 0;
  } else
   cmd->hdr.return_code = -EIO;
  return 0;
 }
 card->info.mac_bits &= ~QETH_LAYER2_MAC_REGISTERED;

 return 0;
}
