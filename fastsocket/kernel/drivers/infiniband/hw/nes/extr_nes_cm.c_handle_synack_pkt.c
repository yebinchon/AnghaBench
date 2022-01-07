
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct tcphdr {int doff; int ack_seq; int seq; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {void* loc_seq_num; int rcv_nxt; void* rem_ack_num; } ;
struct nes_cm_node {int state; TYPE_1__ tcp_cntxt; } ;
 int NES_DBG_CM ;
 int add_ref_cm_node (struct nes_cm_node*) ;
 int check_syn (struct nes_cm_node*,struct tcphdr*,struct sk_buff*) ;
 int cleanup_retrans_entry (struct nes_cm_node*) ;
 int drop_packet (struct sk_buff*) ;
 int handle_tcp_options (struct nes_cm_node*,struct tcphdr*,struct sk_buff*,int,int ) ;
 int nes_debug (int ,char*,struct nes_cm_node*) ;
 void* ntohl (int ) ;
 int passive_open_err (struct nes_cm_node*,struct sk_buff*,int) ;
 int send_mpa_request (struct nes_cm_node*,struct sk_buff*) ;
 int send_reset (struct nes_cm_node*,struct sk_buff*) ;
 int skb_trim (struct sk_buff*,int ) ;

__attribute__((used)) static void handle_synack_pkt(struct nes_cm_node *cm_node, struct sk_buff *skb,
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
  cleanup_retrans_entry(cm_node);

  if (check_syn(cm_node, tcph, skb))
   return;
  cm_node->tcp_cntxt.rem_ack_num = ntohl(tcph->ack_seq);

  ret = handle_tcp_options(cm_node, tcph, skb, optionsize, 0);
  if (ret) {
   nes_debug(NES_DBG_CM, "cm_node=%p tcp_options failed\n",
      cm_node);
   break;
  }
  cleanup_retrans_entry(cm_node);
  cm_node->tcp_cntxt.rcv_nxt = inc_sequence + 1;
  send_mpa_request(cm_node, skb);
  cm_node->state = 131;
  break;
 case 132:

  passive_open_err(cm_node, skb, 1);
  break;
 case 133:
  cm_node->tcp_cntxt.loc_seq_num = ntohl(tcph->ack_seq);
  cleanup_retrans_entry(cm_node);
  cm_node->state = 139;
  send_reset(cm_node, skb);
  break;
 case 139:
  cm_node->tcp_cntxt.loc_seq_num = ntohl(tcph->ack_seq);
  cleanup_retrans_entry(cm_node);
  add_ref_cm_node(cm_node);
  send_reset(cm_node, skb);
  break;
 case 137:
 case 136:
 case 135:
 case 134:
 case 129:
 case 138:
 case 128:
 case 131:
 default:
  drop_packet(skb);
  break;
 }
}
