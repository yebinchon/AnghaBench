
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct qeth_reply {int dummy; } ;
struct TYPE_6__ {scalar_t__ return_code; } ;
struct TYPE_4__ {int * mac; } ;
struct TYPE_5__ {TYPE_1__ setdelmac; } ;
struct qeth_ipa_cmd {TYPE_3__ hdr; TYPE_2__ data; } ;
struct qeth_card {int dummy; } ;
typedef int __u8 ;


 int QETH_CARD_IFNAME (struct qeth_card*) ;
 int QETH_DBF_MESSAGE (int,char*,int *,int ,scalar_t__) ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 int TRACE ;

__attribute__((used)) static int qeth_l2_send_delgroupmac_cb(struct qeth_card *card,
    struct qeth_reply *reply,
    unsigned long data)
{
 struct qeth_ipa_cmd *cmd;
 __u8 *mac;

 QETH_DBF_TEXT(TRACE, 2, "L2Dgmacb");
 cmd = (struct qeth_ipa_cmd *) data;
 mac = &cmd->data.setdelmac.mac[0];
 if (cmd->hdr.return_code)
  QETH_DBF_MESSAGE(2, "Could not delete group MAC %pM on %s: %x\n",
     mac, QETH_CARD_IFNAME(card), cmd->hdr.return_code);
 return 0;
}
