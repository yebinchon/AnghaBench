
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int length; int optionnum; } ;
struct TYPE_6__ {int length; int shiftcount; int optionnum; } ;
struct TYPE_5__ {int length; int mss; int optionnum; } ;
union all_known_options {int as_end; TYPE_4__ as_base; TYPE_2__ as_windowscale; TYPE_1__ as_mss; } ;
typedef scalar_t__ u32 ;
struct sk_buff {int dummy; } ;
struct option_windowscale {int dummy; } ;
struct option_mss {int dummy; } ;
struct option_base {int dummy; } ;
struct TYPE_7__ {int rcv_wscale; int mss; } ;
struct nes_cm_node {TYPE_3__ tcp_cntxt; } ;


 int EINVAL ;
 int MAX_CM_BUFFER ;
 int NES_DBG_CM ;
 int NES_DRV_OPT_SUPRESS_OPTION_BC ;
 int NES_TIMER_TYPE_SEND ;
 int OPTION_NUMBER_END ;
 int OPTION_NUMBER_MSS ;
 int OPTION_NUMBER_WINDOW_SCALE ;
 int OPTION_NUMBER_WRITE0 ;
 int SET_ACK ;
 int SET_SYN ;
 int TCP_OPTIONS_PADDING ;
 struct sk_buff* dev_alloc_skb (int ) ;
 int form_cm_frame (struct sk_buff*,struct nes_cm_node*,char*,int,int *,int ,int) ;
 int htons (int ) ;
 int nes_debug (int ,char*) ;
 int nes_drv_opt ;
 int schedule_nes_timer (struct nes_cm_node*,struct sk_buff*,int ,int,int ) ;

__attribute__((used)) static int send_syn(struct nes_cm_node *cm_node, u32 sendack,
      struct sk_buff *skb)
{
 int ret;
 int flags = SET_SYN;
 char optionsbuffer[sizeof(struct option_mss) +
      sizeof(struct option_windowscale) + sizeof(struct option_base) +
      TCP_OPTIONS_PADDING];

 int optionssize = 0;

 union all_known_options *options;

 if (!cm_node)
  return -EINVAL;

 options = (union all_known_options *)&optionsbuffer[optionssize];
 options->as_mss.optionnum = OPTION_NUMBER_MSS;
 options->as_mss.length = sizeof(struct option_mss);
 options->as_mss.mss = htons(cm_node->tcp_cntxt.mss);
 optionssize += sizeof(struct option_mss);

 options = (union all_known_options *)&optionsbuffer[optionssize];
 options->as_windowscale.optionnum = OPTION_NUMBER_WINDOW_SCALE;
 options->as_windowscale.length = sizeof(struct option_windowscale);
 options->as_windowscale.shiftcount = cm_node->tcp_cntxt.rcv_wscale;
 optionssize += sizeof(struct option_windowscale);

 if (sendack && !(NES_DRV_OPT_SUPRESS_OPTION_BC & nes_drv_opt)) {
  options = (union all_known_options *)&optionsbuffer[optionssize];
  options->as_base.optionnum = OPTION_NUMBER_WRITE0;
  options->as_base.length = sizeof(struct option_base);
  optionssize += sizeof(struct option_base);

  options = (union all_known_options *)&optionsbuffer[optionssize];
  options->as_end = 1;
  optionssize += 1;
  options = (union all_known_options *)&optionsbuffer[optionssize];
  options->as_end = 1;
  optionssize += 1;
 }

 options = (union all_known_options *)&optionsbuffer[optionssize];
 options->as_end = OPTION_NUMBER_END;
 optionssize += 1;

 if (!skb)
  skb = dev_alloc_skb(MAX_CM_BUFFER);
 if (!skb) {
  nes_debug(NES_DBG_CM, "Failed to get a Free pkt\n");
  return -1;
 }

 if (sendack)
  flags |= SET_ACK;

 form_cm_frame(skb, cm_node, optionsbuffer, optionssize, ((void*)0), 0, flags);
 ret = schedule_nes_timer(cm_node, skb, NES_TIMER_TYPE_SEND, 1, 0);

 return ret;
}
