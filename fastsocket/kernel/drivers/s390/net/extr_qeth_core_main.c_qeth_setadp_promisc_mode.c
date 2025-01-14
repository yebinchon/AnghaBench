
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct qeth_ipacmd_setadpparms {int dummy; } ;
struct TYPE_6__ {int mode; } ;
struct TYPE_7__ {TYPE_2__ data; } ;
struct TYPE_8__ {TYPE_3__ setadapterparms; } ;
struct qeth_ipa_cmd {TYPE_4__ data; } ;
struct qeth_cmd_buffer {scalar_t__ data; } ;
struct TYPE_5__ {scalar_t__ promisc_mode; } ;
struct qeth_card {TYPE_1__ info; struct net_device* dev; } ;
struct net_device {int flags; } ;
typedef enum qeth_ipa_promisc_modes { ____Placeholder_qeth_ipa_promisc_modes } qeth_ipa_promisc_modes ;


 int IFF_PROMISC ;
 scalar_t__ IPA_PDU_HEADER_SIZE ;
 int IPA_SETADP_SET_PROMISC_MODE ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 int QETH_DBF_TEXT_ (int ,int,char*,int) ;
 scalar_t__ SET_PROMISC_MODE_OFF ;
 scalar_t__ SET_PROMISC_MODE_ON ;
 int TRACE ;
 struct qeth_cmd_buffer* qeth_get_adapter_cmd (struct qeth_card*,int ,int) ;
 int qeth_send_ipa_cmd (struct qeth_card*,struct qeth_cmd_buffer*,int ,int *) ;
 int qeth_setadp_promisc_mode_cb ;

void qeth_setadp_promisc_mode(struct qeth_card *card)
{
 enum qeth_ipa_promisc_modes mode;
 struct net_device *dev = card->dev;
 struct qeth_cmd_buffer *iob;
 struct qeth_ipa_cmd *cmd;

 QETH_DBF_TEXT(TRACE, 4, "setprom");

 if (((dev->flags & IFF_PROMISC) &&
      (card->info.promisc_mode == SET_PROMISC_MODE_ON)) ||
     (!(dev->flags & IFF_PROMISC) &&
      (card->info.promisc_mode == SET_PROMISC_MODE_OFF)))
  return;
 mode = SET_PROMISC_MODE_OFF;
 if (dev->flags & IFF_PROMISC)
  mode = SET_PROMISC_MODE_ON;
 QETH_DBF_TEXT_(TRACE, 4, "mode:%x", mode);

 iob = qeth_get_adapter_cmd(card, IPA_SETADP_SET_PROMISC_MODE,
   sizeof(struct qeth_ipacmd_setadpparms));
 cmd = (struct qeth_ipa_cmd *)(iob->data + IPA_PDU_HEADER_SIZE);
 cmd->data.setadapterparms.data.mode = mode;
 qeth_send_ipa_cmd(card, iob, qeth_setadp_promisc_mode_cb, ((void*)0));
}
