
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct tcphdr {int seq; int rst; int fin; int window; int ack_seq; } ;
struct sk_buff {int * cb; } ;
struct nes_rskb_cb {scalar_t__ data_start; } ;
struct iphdr {int ihl; } ;


 scalar_t__ ETH_HLEN ;
 int be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;

__attribute__((used)) static u32 nes_get_seq(struct sk_buff *skb, u32 *ack, u16 *wnd, u32 *fin_rcvd, u32 *rst_rcvd)
{
 struct nes_rskb_cb *cb = (struct nes_rskb_cb *)&skb->cb[0];
 struct iphdr *iph = (struct iphdr *)(cb->data_start + ETH_HLEN);
 struct tcphdr *tcph = (struct tcphdr *)(((char *)iph) + (4 * iph->ihl));

 *ack = be32_to_cpu(tcph->ack_seq);
 *wnd = be16_to_cpu(tcph->window);
 *fin_rcvd = tcph->fin;
 *rst_rcvd = tcph->rst;
 return be32_to_cpu(tcph->seq);
}
