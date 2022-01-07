
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlan_ethhdr {scalar_t__ h_vlan_proto; } ;
struct sk_buff {int len; scalar_t__ ip_summed; int protocol; scalar_t__ data; } ;
struct iphdr {int tot_len; } ;
struct be_adapter {int function_mode; scalar_t__ qnq_vid; scalar_t__ pvid; } ;


 int BEx_chip (struct be_adapter*) ;
 scalar_t__ CHECKSUM_PARTIAL ;
 unsigned int ETH_HLEN ;
 scalar_t__ ETH_P_8021Q ;
 int UMC_ENABLED ;
 unsigned int VLAN_ETH_HLEN ;
 struct sk_buff* be_insert_vlan_in_pkt (struct be_adapter*,struct sk_buff*,int*) ;
 scalar_t__ be_ipv6_tx_stall_chk (struct be_adapter*,struct sk_buff*) ;
 scalar_t__ be_vlan_tag_tx_chk (struct be_adapter*,struct sk_buff*) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 scalar_t__ htons (scalar_t__) ;
 scalar_t__ ip_hdr (struct sk_buff*) ;
 scalar_t__ is_ipv4_pkt (struct sk_buff*) ;
 scalar_t__ lancer_chip (struct be_adapter*) ;
 scalar_t__ ntohs (int ) ;
 int pskb_trim (struct sk_buff*,scalar_t__) ;
 int qnq_async_evt_rcvd (struct be_adapter*) ;
 scalar_t__ skb_padto (struct sk_buff*,int) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ vlan_tx_tag_present (struct sk_buff*) ;

__attribute__((used)) static struct sk_buff *be_xmit_workarounds(struct be_adapter *adapter,
        struct sk_buff *skb,
        bool *skip_hw_vlan)
{
 struct vlan_ethhdr *veh = (struct vlan_ethhdr *)skb->data;
 unsigned int eth_hdr_len;
 struct iphdr *ip;





 if (unlikely(!BEx_chip(adapter) && skb->len <= 32)) {
  if (skb_padto(skb, 36))
   goto tx_drop;
  skb->len = 36;
 }





 eth_hdr_len = ntohs(skb->protocol) == ETH_P_8021Q ?
      VLAN_ETH_HLEN : ETH_HLEN;
 if (skb->len <= 60 &&
     (lancer_chip(adapter) || vlan_tx_tag_present(skb)) &&
     is_ipv4_pkt(skb)) {
  ip = (struct iphdr *)ip_hdr(skb);
  pskb_trim(skb, eth_hdr_len + ntohs(ip->tot_len));
 }




 if ((adapter->function_mode & UMC_ENABLED) &&
     veh->h_vlan_proto == htons(ETH_P_8021Q))
   *skip_hw_vlan = 1;





 if (skb->ip_summed != CHECKSUM_PARTIAL &&
     vlan_tx_tag_present(skb)) {
  skb = be_insert_vlan_in_pkt(adapter, skb, skip_hw_vlan);
  if (unlikely(!skb))
   goto tx_drop;
 }





 if (unlikely(be_ipv6_tx_stall_chk(adapter, skb) &&
     (adapter->pvid || adapter->qnq_vid) &&
     !qnq_async_evt_rcvd(adapter)))
  goto tx_drop;







 if (be_ipv6_tx_stall_chk(adapter, skb) &&
     be_vlan_tag_tx_chk(adapter, skb)) {
  skb = be_insert_vlan_in_pkt(adapter, skb, skip_hw_vlan);
  if (unlikely(!skb))
   goto tx_drop;
 }

 return skb;
tx_drop:
 dev_kfree_skb_any(skb);
 return ((void*)0);
}
