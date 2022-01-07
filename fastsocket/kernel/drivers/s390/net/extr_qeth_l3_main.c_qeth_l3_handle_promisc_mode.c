
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ sniffer; } ;
struct TYPE_3__ {scalar_t__ promisc_mode; scalar_t__ guestlan; } ;
struct qeth_card {TYPE_2__ options; TYPE_1__ info; struct net_device* dev; } ;
struct net_device {int flags; } ;


 int IFF_PROMISC ;
 int IPA_SETADP_SET_DIAG_ASSIST ;
 int IPA_SETADP_SET_PROMISC_MODE ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 int QETH_DIAGS_CMD_TRACE_DISABLE ;
 int QETH_DIAGS_CMD_TRACE_ENABLE ;
 scalar_t__ SET_PROMISC_MODE_OFF ;
 scalar_t__ SET_PROMISC_MODE_ON ;
 int TRACE ;
 scalar_t__ qeth_adp_supported (struct qeth_card*,int ) ;
 int qeth_diags_trace (struct qeth_card*,int ) ;
 int qeth_setadp_promisc_mode (struct qeth_card*) ;

__attribute__((used)) static void
qeth_l3_handle_promisc_mode(struct qeth_card *card)
{
 struct net_device *dev = card->dev;

 if (((dev->flags & IFF_PROMISC) &&
      (card->info.promisc_mode == SET_PROMISC_MODE_ON)) ||
     (!(dev->flags & IFF_PROMISC) &&
      (card->info.promisc_mode == SET_PROMISC_MODE_OFF)))
  return;

 if (card->info.guestlan) {
  if (qeth_adp_supported(card, IPA_SETADP_SET_PROMISC_MODE))
   qeth_setadp_promisc_mode(card);
 } else if (card->options.sniffer &&
     qeth_adp_supported(card, IPA_SETADP_SET_DIAG_ASSIST)) {
  if (dev->flags & IFF_PROMISC) {
   QETH_DBF_TEXT(TRACE, 3, "+promisc");
   qeth_diags_trace(card, QETH_DIAGS_CMD_TRACE_ENABLE);
  } else {
   QETH_DBF_TEXT(TRACE, 3, "-promisc");
   qeth_diags_trace(card, QETH_DIAGS_CMD_TRACE_DISABLE);
  }
 }
}
