
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nes_cm_node {int dummy; } ;


 int MAX_CM_BUFFER ;
 int NES_DBG_CM ;
 int NES_TIMER_TYPE_SEND ;
 int SET_ACK ;
 int SET_FIN ;
 struct sk_buff* dev_alloc_skb (int ) ;
 int form_cm_frame (struct sk_buff*,struct nes_cm_node*,int *,int ,int *,int ,int) ;
 int nes_debug (int ,char*) ;
 int schedule_nes_timer (struct nes_cm_node*,struct sk_buff*,int ,int,int ) ;

__attribute__((used)) static int send_fin(struct nes_cm_node *cm_node, struct sk_buff *skb)
{
 int ret;


 if (!skb)
  skb = dev_alloc_skb(MAX_CM_BUFFER);

 if (!skb) {
  nes_debug(NES_DBG_CM, "Failed to get a Free pkt\n");
  return -1;
 }

 form_cm_frame(skb, cm_node, ((void*)0), 0, ((void*)0), 0, SET_ACK | SET_FIN);
 ret = schedule_nes_timer(cm_node, skb, NES_TIMER_TYPE_SEND, 1, 0);

 return ret;
}
