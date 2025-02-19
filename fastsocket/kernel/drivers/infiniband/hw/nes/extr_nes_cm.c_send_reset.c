
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nes_cm_node {int dummy; } ;


 int ENOMEM ;
 int MAX_CM_BUFFER ;
 int NES_DBG_CM ;
 int NES_TIMER_TYPE_SEND ;
 int SET_ACK ;
 int SET_RST ;
 struct sk_buff* dev_alloc_skb (int ) ;
 int form_cm_frame (struct sk_buff*,struct nes_cm_node*,int *,int ,int *,int ,int) ;
 int nes_debug (int ,char*) ;
 int schedule_nes_timer (struct nes_cm_node*,struct sk_buff*,int ,int ,int) ;

__attribute__((used)) static int send_reset(struct nes_cm_node *cm_node, struct sk_buff *skb)
{
 int ret;
 int flags = SET_RST | SET_ACK;

 if (!skb)
  skb = dev_alloc_skb(MAX_CM_BUFFER);
 if (!skb) {
  nes_debug(NES_DBG_CM, "Failed to get a Free pkt\n");
  return -ENOMEM;
 }

 form_cm_frame(skb, cm_node, ((void*)0), 0, ((void*)0), 0, flags);
 ret = schedule_nes_timer(cm_node, skb, NES_TIMER_TYPE_SEND, 0, 1);

 return ret;
}
