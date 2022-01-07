
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tcphdr {scalar_t__ fin; scalar_t__ ack; scalar_t__ syn; scalar_t__ rst; } ;
struct sk_buff {int dummy; } ;
struct nes_cm_node {int state; } ;
struct nes_cm_core {int dummy; } ;
typedef enum nes_tcpip_pkt_type { ____Placeholder_nes_tcpip_pkt_type } nes_tcpip_pkt_type ;
struct TYPE_2__ {int ihl; } ;


 int NES_DBG_CM ;




 int NES_PKT_TYPE_UNKNOWN ;
 int check_seq (struct nes_cm_node*,struct tcphdr*,struct sk_buff*) ;
 int drop_packet (struct sk_buff*) ;
 int handle_ack_pkt (struct nes_cm_node*,struct sk_buff*,struct tcphdr*) ;
 int handle_fin_pkt (struct nes_cm_node*) ;
 int handle_rst_pkt (struct nes_cm_node*,struct sk_buff*,struct tcphdr*) ;
 int handle_syn_pkt (struct nes_cm_node*,struct sk_buff*,struct tcphdr*) ;
 int handle_synack_pkt (struct nes_cm_node*,struct sk_buff*,struct tcphdr*) ;
 TYPE_1__* ip_hdr (struct sk_buff*) ;
 int nes_debug (int ,char*,struct nes_cm_node*,int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int skb_pull (struct sk_buff*,int) ;
 struct tcphdr* tcp_hdr (struct sk_buff*) ;

__attribute__((used)) static void process_packet(struct nes_cm_node *cm_node, struct sk_buff *skb,
      struct nes_cm_core *cm_core)
{
 enum nes_tcpip_pkt_type pkt_type = NES_PKT_TYPE_UNKNOWN;
 struct tcphdr *tcph = tcp_hdr(skb);
 u32 fin_set = 0;
 int ret = 0;

 skb_pull(skb, ip_hdr(skb)->ihl << 2);

 nes_debug(NES_DBG_CM, "process_packet: cm_node=%p state =%d syn=%d "
    "ack=%d rst=%d fin=%d\n", cm_node, cm_node->state, tcph->syn,
    tcph->ack, tcph->rst, tcph->fin);

 if (tcph->rst) {
  pkt_type = 130;
 } else if (tcph->syn) {
  pkt_type = 129;
  if (tcph->ack)
   pkt_type = 128;
 } else if (tcph->ack) {
  pkt_type = 131;
 }
 if (tcph->fin)
  fin_set = 1;

 switch (pkt_type) {
 case 129:
  handle_syn_pkt(cm_node, skb, tcph);
  break;
 case 128:
  handle_synack_pkt(cm_node, skb, tcph);
  break;
 case 131:
  ret = handle_ack_pkt(cm_node, skb, tcph);
  if (fin_set && !ret)
   handle_fin_pkt(cm_node);
  break;
 case 130:
  handle_rst_pkt(cm_node, skb, tcph);
  break;
 default:
  if ((fin_set) && (!check_seq(cm_node, tcph, skb)))
   handle_fin_pkt(cm_node);
  drop_packet(skb);
  break;
 }
}
