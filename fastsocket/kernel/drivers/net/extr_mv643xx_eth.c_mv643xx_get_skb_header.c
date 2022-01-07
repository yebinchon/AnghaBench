
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct sk_buff {int dummy; } ;


 int LRO_IPV4 ;
 int LRO_TCP ;
 unsigned long RX_IP_HDR_OK ;
 unsigned long RX_PKT_IS_ETHERNETV2 ;
 unsigned long RX_PKT_IS_IPV4 ;
 unsigned long RX_PKT_IS_VLAN_TAGGED ;
 unsigned long RX_PKT_LAYER4_TYPE_MASK ;
 unsigned long RX_PKT_LAYER4_TYPE_TCP_IPV4 ;
 void* ip_hdr (struct sk_buff*) ;
 int ip_hdrlen (struct sk_buff*) ;
 int skb_reset_network_header (struct sk_buff*) ;
 int skb_set_transport_header (struct sk_buff*,int ) ;
 void* tcp_hdr (struct sk_buff*) ;

__attribute__((used)) static int
mv643xx_get_skb_header(struct sk_buff *skb, void **iphdr, void **tcph,
         u64 *hdr_flags, void *priv)
{
 unsigned long cmd_sts = (unsigned long)priv;





 if ((cmd_sts & (RX_IP_HDR_OK | RX_PKT_IS_IPV4 |
         RX_PKT_IS_ETHERNETV2 | RX_PKT_LAYER4_TYPE_MASK |
         RX_PKT_IS_VLAN_TAGGED)) !=
     (RX_IP_HDR_OK | RX_PKT_IS_IPV4 |
      RX_PKT_IS_ETHERNETV2 | RX_PKT_LAYER4_TYPE_TCP_IPV4))
  return -1;

 skb_reset_network_header(skb);
 skb_set_transport_header(skb, ip_hdrlen(skb));
 *iphdr = ip_hdr(skb);
 *tcph = tcp_hdr(skb);
 *hdr_flags = LRO_IPV4 | LRO_TCP;

 return 0;
}
