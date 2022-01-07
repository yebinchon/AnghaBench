
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sniffer; } ;
struct qeth_card {scalar_t__ state; TYPE_1__ options; } ;
struct net_device {struct qeth_card* ml_priv; } ;


 scalar_t__ CARD_STATE_UP ;
 int IPA_SETADP_SET_PROMISC_MODE ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 int QETH_RECOVER_THREAD ;
 int TRACE ;
 int qeth_adp_supported (struct qeth_card*,int ) ;
 int qeth_l3_add_multicast_ipv4 (struct qeth_card*) ;
 int qeth_l3_add_multicast_ipv6 (struct qeth_card*) ;
 int qeth_l3_delete_mc_addresses (struct qeth_card*) ;
 int qeth_l3_handle_promisc_mode (struct qeth_card*) ;
 int qeth_l3_set_ip_addr_list (struct qeth_card*) ;
 scalar_t__ qeth_threads_running (struct qeth_card*,int ) ;

__attribute__((used)) static void qeth_l3_set_multicast_list(struct net_device *dev)
{
 struct qeth_card *card = dev->ml_priv;

 QETH_DBF_TEXT(TRACE, 3, "setmulti");
 if (qeth_threads_running(card, QETH_RECOVER_THREAD) &&
     (card->state != CARD_STATE_UP))
  return;
 if (!card->options.sniffer) {
  qeth_l3_delete_mc_addresses(card);
  qeth_l3_add_multicast_ipv4(card);



  qeth_l3_set_ip_addr_list(card);
  if (!qeth_adp_supported(card, IPA_SETADP_SET_PROMISC_MODE))
   return;
 }
 qeth_l3_handle_promisc_mode(card);
}
