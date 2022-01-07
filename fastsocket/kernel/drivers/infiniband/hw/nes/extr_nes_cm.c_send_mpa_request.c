
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct nes_cm_node {int dummy; } ;


 int MPA_KEY_REQUEST ;
 int NES_DBG_CM ;
 int NES_TIMER_TYPE_SEND ;
 int SET_ACK ;
 int cm_build_mpa_frame (struct nes_cm_node*,int **,int *,int *,int ) ;
 int form_cm_frame (struct sk_buff*,struct nes_cm_node*,int *,int ,int *,int ,int ) ;
 int nes_debug (int ,char*) ;
 int schedule_nes_timer (struct nes_cm_node*,struct sk_buff*,int ,int,int ) ;

__attribute__((used)) static int send_mpa_request(struct nes_cm_node *cm_node, struct sk_buff *skb)
{
 u8 start_addr = 0;
 u8 *start_ptr = &start_addr;
 u8 **start_buff = &start_ptr;
 u16 buff_len = 0;

 if (!skb) {
  nes_debug(NES_DBG_CM, "skb set to NULL\n");
  return -1;
 }


 cm_build_mpa_frame(cm_node, start_buff, &buff_len, ((void*)0), MPA_KEY_REQUEST);
 form_cm_frame(skb, cm_node, ((void*)0), 0, *start_buff, buff_len, SET_ACK);

 return schedule_nes_timer(cm_node, skb, NES_TIMER_TYPE_SEND, 1, 0);
}
