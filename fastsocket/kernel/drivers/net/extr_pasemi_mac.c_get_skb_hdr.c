
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct sk_buff {int dummy; } ;
struct iphdr {scalar_t__ protocol; int tot_len; } ;


 scalar_t__ IPPROTO_TCP ;
 int LRO_IPV4 ;
 int LRO_TCP ;
 int XCT_MACRX_HTY_IPV4_OK ;
 int XCT_MACRX_HTY_M ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 unsigned int ip_hdrlen (struct sk_buff*) ;
 scalar_t__ ntohs (int ) ;
 int skb_reset_network_header (struct sk_buff*) ;
 int skb_set_transport_header (struct sk_buff*,unsigned int) ;
 void* tcp_hdr (struct sk_buff*) ;
 scalar_t__ tcp_hdrlen (struct sk_buff*) ;

__attribute__((used)) static int get_skb_hdr(struct sk_buff *skb, void **iphdr,
         void **tcph, u64 *hdr_flags, void *data)
{
 u64 macrx = (u64) data;
 unsigned int ip_len;
 struct iphdr *iph;


 if ((macrx & XCT_MACRX_HTY_M) != XCT_MACRX_HTY_IPV4_OK)
  return -1;


 skb_reset_network_header(skb);
 iph = ip_hdr(skb);
 if (iph->protocol != IPPROTO_TCP)
  return -1;

 ip_len = ip_hdrlen(skb);
 skb_set_transport_header(skb, ip_len);
 *tcph = tcp_hdr(skb);


 if (ntohs(iph->tot_len) < ip_len + tcp_hdrlen(skb))
  return -1;

 *hdr_flags = LRO_IPV4 | LRO_TCP;
 *iphdr = iph;

 return 0;
}
