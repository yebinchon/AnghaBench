
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nes_cm_node {int cm_core; int state; } ;


 int NES_CM_STATE_CLOSED ;
 int NES_DBG_CM ;
 int cleanup_retrans_entry (struct nes_cm_node*) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int nes_debug (int ,char*,struct nes_cm_node*,int ) ;
 int rem_ref_cm_node (int ,struct nes_cm_node*) ;
 int send_reset (struct nes_cm_node*,struct sk_buff*) ;

__attribute__((used)) static void passive_open_err(struct nes_cm_node *cm_node, struct sk_buff *skb,
        int reset)
{
 cleanup_retrans_entry(cm_node);
 cm_node->state = NES_CM_STATE_CLOSED;
 if (reset) {
  nes_debug(NES_DBG_CM, "passive_open_err sending RST for "
     "cm_node=%p state =%d\n", cm_node, cm_node->state);
  send_reset(cm_node, skb);
 } else {
  dev_kfree_skb_any(skb);
  rem_ref_cm_node(cm_node->cm_core, cm_node);
 }
}
