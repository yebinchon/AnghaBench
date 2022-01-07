
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nes_cm_node {int state; } ;


 int NES_CM_EVENT_ABORTED ;
 int NES_CM_STATE_CLOSED ;
 int NES_DBG_CM ;
 int add_ref_cm_node (struct nes_cm_node*) ;
 int cleanup_retrans_entry (struct nes_cm_node*) ;
 int create_event (struct nes_cm_node*,int ) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int nes_debug (int ,char*,struct nes_cm_node*,int ) ;
 int send_reset (struct nes_cm_node*,struct sk_buff*) ;

__attribute__((used)) static void active_open_err(struct nes_cm_node *cm_node, struct sk_buff *skb,
       int reset)
{
 cleanup_retrans_entry(cm_node);
 if (reset) {
  nes_debug(NES_DBG_CM, "ERROR active err called for cm_node=%p, "
     "state=%d\n", cm_node, cm_node->state);
  add_ref_cm_node(cm_node);
  send_reset(cm_node, skb);
 } else {
  dev_kfree_skb_any(skb);
 }

 cm_node->state = NES_CM_STATE_CLOSED;
 create_event(cm_node, NES_CM_EVENT_ABORTED);
}
