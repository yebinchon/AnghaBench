
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int command; } ;
struct qeth_ipa_cmd {TYPE_1__ hdr; } ;
struct qeth_card {TYPE_2__* gdev; } ;
struct TYPE_4__ {int dev; } ;


 int QETH_CARD_IFNAME (struct qeth_card*) ;
 int QETH_DBF_MESSAGE (int,char*,char*,int,int ,int ,...) ;
 int dev_name (int *) ;
 char* qeth_get_ipa_cmd_name (int) ;
 int qeth_get_ipa_msg (int) ;

__attribute__((used)) static void qeth_issue_ipa_msg(struct qeth_ipa_cmd *cmd, int rc,
  struct qeth_card *card)
{
 char *ipa_name;
 int com = cmd->hdr.command;
 ipa_name = qeth_get_ipa_cmd_name(com);
 if (rc)
  QETH_DBF_MESSAGE(2, "IPA: %s(x%X) for %s/%s returned "
    "x%X \"%s\"\n",
    ipa_name, com, dev_name(&card->gdev->dev),
    QETH_CARD_IFNAME(card), rc,
    qeth_get_ipa_msg(rc));
 else
  QETH_DBF_MESSAGE(5, "IPA: %s(x%X) for %s/%s succeeded\n",
    ipa_name, com, dev_name(&card->gdev->dev),
    QETH_CARD_IFNAME(card));
}
