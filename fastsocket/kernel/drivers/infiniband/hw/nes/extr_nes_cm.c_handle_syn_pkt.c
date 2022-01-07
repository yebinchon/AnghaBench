
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct tcphdr {int doff; int seq; } ;
struct sk_buff {int dummy; } ;
struct TYPE_3__ {int rcv_nxt; } ;
struct nes_cm_node {int state; int accept_pend; TYPE_2__* listener; int send_entry; TYPE_1__ tcp_cntxt; } ;
struct TYPE_4__ {int pend_accepts_cnt; int backlog; } ;


 int BUG_ON (int ) ;
 int NES_CM_STATE_SYN_RCVD ;



 int NES_DBG_CM ;
 int active_open_err (struct nes_cm_node*,struct sk_buff*,int) ;
 int add_ref_cm_node (struct nes_cm_node*) ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int cleanup_retrans_entry (struct nes_cm_node*) ;
 int cm_backlog_drops ;
 int drop_packet (struct sk_buff*) ;
 int handle_tcp_options (struct nes_cm_node*,struct tcphdr*,struct sk_buff*,int,int) ;
 int nes_debug (int ,char*) ;
 int ntohl (int ) ;
 int passive_open_err (struct nes_cm_node*,struct sk_buff*,int ) ;
 int send_reset (struct nes_cm_node*,struct sk_buff*) ;
 int send_syn (struct nes_cm_node*,int,struct sk_buff*) ;
 int skb_trim (struct sk_buff*,int ) ;

__attribute__((used)) static void handle_syn_pkt(struct nes_cm_node *cm_node, struct sk_buff *skb,
      struct tcphdr *tcph)
{
 int ret;
 u32 inc_sequence;
 int optionsize;

 optionsize = (tcph->doff << 2) - sizeof(struct tcphdr);
 skb_trim(skb, 0);
 inc_sequence = ntohl(tcph->seq);

 switch (cm_node->state) {
 case 130:
 case 131:

  active_open_err(cm_node, skb, 1);
  break;
 case 133:

  if (atomic_read(&cm_node->listener->pend_accepts_cnt) >
      cm_node->listener->backlog) {
   nes_debug(NES_DBG_CM, "drop syn due to backlog "
      "pressure \n");
   cm_backlog_drops++;
   passive_open_err(cm_node, skb, 0);
   break;
  }
  ret = handle_tcp_options(cm_node, tcph, skb, optionsize,
      1);
  if (ret) {
   passive_open_err(cm_node, skb, 0);

   break;
  }
  cm_node->tcp_cntxt.rcv_nxt = inc_sequence + 1;
  BUG_ON(cm_node->send_entry);
  cm_node->accept_pend = 1;
  atomic_inc(&cm_node->listener->pend_accepts_cnt);

  cm_node->state = NES_CM_STATE_SYN_RCVD;
  send_syn(cm_node, 1, skb);
  break;
 case 139:
  cleanup_retrans_entry(cm_node);
  add_ref_cm_node(cm_node);
  send_reset(cm_node, skb);
  break;
 case 129:
 case 137:
 case 136:
 case 135:
 case 132:
 case 134:
 case 138:
 case 128:
 default:
  drop_packet(skb);
  break;
 }
}
