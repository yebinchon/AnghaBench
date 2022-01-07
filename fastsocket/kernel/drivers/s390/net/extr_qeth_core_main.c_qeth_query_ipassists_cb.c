
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
struct TYPE_10__ {int return_code; scalar_t__ prot_version; int ipa_enabled; int ipa_supported; } ;
struct qeth_ipa_cmd {TYPE_5__ hdr; } ;
struct TYPE_7__ {int enabled_funcs; int supported_funcs; } ;
struct TYPE_6__ {int enabled_funcs; int supported_funcs; } ;
struct TYPE_8__ {TYPE_2__ ipa6; TYPE_1__ ipa4; } ;
struct qeth_card {TYPE_4__* gdev; TYPE_3__ options; } ;
struct TYPE_9__ {int dev; } ;




 int IPA_SETADAPTERPARMS ;
 int QETH_DBF_MESSAGE (int,char*,int ,...) ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 int QETH_DBF_TEXT_ (int ,int,char*,int ) ;
 scalar_t__ QETH_PROT_IPV4 ;
 scalar_t__ QETH_PROT_IPV6 ;
 int SETUP ;
 int dev_name (int *) ;

__attribute__((used)) static int qeth_query_ipassists_cb(struct qeth_card *card,
  struct qeth_reply *reply, unsigned long data)
{
 struct qeth_ipa_cmd *cmd;

 QETH_DBF_TEXT(SETUP, 2, "qipasscb");

 cmd = (struct qeth_ipa_cmd *) data;

 switch (cmd->hdr.return_code) {
 case 128:
 case 129:
  QETH_DBF_TEXT(SETUP, 2, "ipaunsup");
  card->options.ipa4.supported_funcs |= IPA_SETADAPTERPARMS;
  card->options.ipa6.supported_funcs |= IPA_SETADAPTERPARMS;
  return -0;
 default:
  if (cmd->hdr.return_code) {
   QETH_DBF_MESSAGE(1, "%s IPA_CMD_QIPASSIST: Unhandled "
      "rc=%d\n",
      dev_name(&card->gdev->dev),
      cmd->hdr.return_code);
   return 0;
  }
 }

 if (cmd->hdr.prot_version == QETH_PROT_IPV4) {
  card->options.ipa4.supported_funcs = cmd->hdr.ipa_supported;
  card->options.ipa4.enabled_funcs = cmd->hdr.ipa_enabled;
 } else if (cmd->hdr.prot_version == QETH_PROT_IPV6) {
  card->options.ipa6.supported_funcs = cmd->hdr.ipa_supported;
  card->options.ipa6.enabled_funcs = cmd->hdr.ipa_enabled;
 } else
  QETH_DBF_MESSAGE(1, "%s IPA_CMD_QIPASSIST: Flawed LIC detected"
     "\n", dev_name(&card->gdev->dev));
 QETH_DBF_TEXT(SETUP, 2, "suppenbl");
 QETH_DBF_TEXT_(SETUP, 2, "%x", cmd->hdr.ipa_supported);
 QETH_DBF_TEXT_(SETUP, 2, "%x", cmd->hdr.ipa_enabled);
 return 0;
}
