
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct nes_cm_node {int state; } ;
struct ietf_mpa_v1 {int flags; } ;


 int ENOMEM ;
 int IETF_MPA_FLAGS_REJECT ;
 int MAX_CM_BUFFER ;
 int MPA_KEY_REPLY ;
 int NES_CM_STATE_FIN_WAIT1 ;
 int NES_DBG_CM ;
 int NES_TIMER_TYPE_SEND ;
 int SET_ACK ;
 int SET_FIN ;
 int cm_build_mpa_frame (struct nes_cm_node*,int **,int *,int *,int ) ;
 struct sk_buff* dev_alloc_skb (int ) ;
 int form_cm_frame (struct sk_buff*,struct nes_cm_node*,int *,int ,int *,int ,int) ;
 int nes_debug (int ,char*) ;
 int schedule_nes_timer (struct nes_cm_node*,struct sk_buff*,int ,int,int ) ;

__attribute__((used)) static int send_mpa_reject(struct nes_cm_node *cm_node)
{
 struct sk_buff *skb = ((void*)0);
 u8 start_addr = 0;
 u8 *start_ptr = &start_addr;
 u8 **start_buff = &start_ptr;
 u16 buff_len = 0;
 struct ietf_mpa_v1 *mpa_frame;

 skb = dev_alloc_skb(MAX_CM_BUFFER);
 if (!skb) {
  nes_debug(NES_DBG_CM, "Failed to get a Free pkt\n");
  return -ENOMEM;
 }


 cm_build_mpa_frame(cm_node, start_buff, &buff_len, ((void*)0), MPA_KEY_REPLY);
 mpa_frame = (struct ietf_mpa_v1 *)*start_buff;
 mpa_frame->flags |= IETF_MPA_FLAGS_REJECT;
 form_cm_frame(skb, cm_node, ((void*)0), 0, *start_buff, buff_len, SET_ACK | SET_FIN);

 cm_node->state = NES_CM_STATE_FIN_WAIT1;
 return schedule_nes_timer(cm_node, skb, NES_TIMER_TYPE_SEND, 1, 0);
}
