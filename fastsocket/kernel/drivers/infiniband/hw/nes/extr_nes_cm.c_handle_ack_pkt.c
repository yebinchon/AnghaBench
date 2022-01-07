
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u32 ;
struct tcphdr {int doff; int ack_seq; int seq; } ;
struct sk_buff {int len; } ;
struct TYPE_3__ {int rcv_nxt; void* rem_ack_num; } ;
struct nes_cm_node {int state; int cm_core; TYPE_2__* cm_id; TYPE_1__ tcp_cntxt; } ;
struct TYPE_4__ {int (* rem_ref ) (TYPE_2__*) ;} ;


 int EINVAL ;
 int add_ref_cm_node (struct nes_cm_node*) ;
 scalar_t__ check_seq (struct nes_cm_node*,struct tcphdr*,struct sk_buff*) ;
 int cleanup_retrans_entry (struct nes_cm_node*) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int drop_packet (struct sk_buff*) ;
 int handle_rcv_mpa (struct nes_cm_node*,struct sk_buff*) ;
 int handle_tcp_options (struct nes_cm_node*,struct tcphdr*,struct sk_buff*,int,int) ;
 void* ntohl (int ) ;
 int rem_ref_cm_node (int ,struct nes_cm_node*) ;
 int send_reset (struct nes_cm_node*,struct sk_buff*) ;
 int skb_pull (struct sk_buff*,int) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static int handle_ack_pkt(struct nes_cm_node *cm_node, struct sk_buff *skb,
     struct tcphdr *tcph)
{
 int datasize = 0;
 u32 inc_sequence;
 int ret = 0;
 int optionsize;

 optionsize = (tcph->doff << 2) - sizeof(struct tcphdr);

 if (check_seq(cm_node, tcph, skb))
  return -EINVAL;

 skb_pull(skb, tcph->doff << 2);
 inc_sequence = ntohl(tcph->seq);
 datasize = skb->len;
 switch (cm_node->state) {
 case 131:

  cleanup_retrans_entry(cm_node);
  ret = handle_tcp_options(cm_node, tcph, skb, optionsize, 1);
  if (ret)
   break;
  cm_node->tcp_cntxt.rem_ack_num = ntohl(tcph->ack_seq);
  cm_node->state = 138;
  if (datasize) {
   cm_node->tcp_cntxt.rcv_nxt = inc_sequence + datasize;
   handle_rcv_mpa(cm_node, skb);
  } else {
   dev_kfree_skb_any(skb);
  }
  break;
 case 138:

  cleanup_retrans_entry(cm_node);
  if (datasize) {
   cm_node->tcp_cntxt.rcv_nxt = inc_sequence + datasize;
   handle_rcv_mpa(cm_node, skb);
  } else {
   drop_packet(skb);
  }
  break;
 case 132:
  cm_node->tcp_cntxt.rem_ack_num = ntohl(tcph->ack_seq);
  if (datasize) {
   cm_node->tcp_cntxt.rcv_nxt = inc_sequence + datasize;
   handle_rcv_mpa(cm_node, skb);
  } else {
   dev_kfree_skb_any(skb);
  }
  break;
 case 134:
  cleanup_retrans_entry(cm_node);
  cm_node->state = 140;
  send_reset(cm_node, skb);
  break;
 case 140:
  cleanup_retrans_entry(cm_node);
  add_ref_cm_node(cm_node);
  send_reset(cm_node, skb);
  break;
 case 135:
 case 139:
  cleanup_retrans_entry(cm_node);
  cm_node->state = 140;
  cm_node->cm_id->rem_ref(cm_node->cm_id);
  rem_ref_cm_node(cm_node->cm_core, cm_node);
  drop_packet(skb);
  break;
 case 137:
  cleanup_retrans_entry(cm_node);
  drop_packet(skb);
  cm_node->state = 136;
  break;
 case 130:
 case 136:
 case 129:
 case 133:
 case 128:
 default:
  cleanup_retrans_entry(cm_node);
  drop_packet(skb);
  break;
 }
 return ret;
}
