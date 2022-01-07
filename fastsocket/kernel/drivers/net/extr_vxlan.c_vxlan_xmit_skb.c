
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vxlanhdr {int vx_vni; int vx_flags; } ;
struct vxlan_sock {TYPE_3__* sock; } ;
struct udphdr {scalar_t__ check; int len; void* source; void* dest; } ;
struct sk_buff {int encapsulation; int len; scalar_t__ vlan_tci; } ;
struct TYPE_4__ {int header_len; int dev; } ;
struct TYPE_5__ {TYPE_1__ dst; } ;
struct rtable {TYPE_2__ u; } ;
struct net {int dummy; } ;
struct iphdr {int dummy; } ;
typedef int __u8 ;
typedef int __be32 ;
typedef void* __be16 ;
struct TYPE_6__ {int sk; } ;


 int ENOMEM ;
 int IPPROTO_UDP ;
 int LL_RESERVED_SPACE (int ) ;
 int VLAN_HLEN ;
 int VXLAN_FLAGS ;
 int VXLAN_HLEN ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ __skb_push (struct sk_buff*,int) ;
 int __vlan_put_tag (struct sk_buff*,int ) ;
 int handle_offloads (struct sk_buff*) ;
 int htonl (int ) ;
 int htons (int ) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 int iptunnel_xmit (struct net*,struct rtable*,struct sk_buff*,int ,int ,int ,int ,int ,void*,struct iphdr const*) ;
 int skb_cow_head (struct sk_buff*,int) ;
 int skb_reset_transport_header (struct sk_buff*) ;
 struct udphdr* udp_hdr (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;
 int vlan_tx_tag_get (struct sk_buff*) ;
 scalar_t__ vlan_tx_tag_present (struct sk_buff*) ;
 int vxlan_set_owner (int ,struct sk_buff*) ;

int vxlan_xmit_skb(struct net *net, struct vxlan_sock *vs,
     struct rtable *rt, struct sk_buff *skb,
     __be32 src, __be32 dst, __u8 tos, __u8 ttl, __be16 df,
     __be16 src_port, __be16 dst_port, __be32 vni)
{
 struct vxlanhdr *vxh;
 struct udphdr *uh;
 int min_headroom;
 int err;
 const struct iphdr *inner_ip;

 if (!skb->encapsulation) {

  skb->encapsulation = 1;
 }

 min_headroom = LL_RESERVED_SPACE(rt->u.dst.dev) + rt->u.dst.header_len
   + VXLAN_HLEN + sizeof(struct iphdr)
   + (vlan_tx_tag_present(skb) ? VLAN_HLEN : 0);


 err = skb_cow_head(skb, min_headroom);
 if (unlikely(err))
  return err;

 if (vlan_tx_tag_present(skb)) {
  if (WARN_ON(!__vlan_put_tag(skb,
         vlan_tx_tag_get(skb))))
   return -ENOMEM;

  skb->vlan_tci = 0;
 }

 inner_ip = ip_hdr(skb);

 vxh = (struct vxlanhdr *) __skb_push(skb, sizeof(*vxh));
 vxh->vx_flags = htonl(VXLAN_FLAGS);
 vxh->vx_vni = vni;

 __skb_push(skb, sizeof(*uh));
 skb_reset_transport_header(skb);
 uh = udp_hdr(skb);

 uh->dest = dst_port;
 uh->source = src_port;

 uh->len = htons(skb->len);
 uh->check = 0;

 vxlan_set_owner(vs->sock->sk, skb);

 err = handle_offloads(skb);
 if (err)
  return err;

 return iptunnel_xmit(net, rt, skb, src, dst,
   IPPROTO_UDP, tos, ttl, df, inner_ip);
}
