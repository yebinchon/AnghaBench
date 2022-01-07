
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vxlan_dev {int flags; } ;
struct sk_buff {int dummy; } ;
struct net_device {int addr_len; } ;
struct neighbour {int ha; } ;
struct iphdr {int daddr; } ;
struct TYPE_2__ {int h_dest; int h_source; int h_proto; } ;



 int VXLAN_F_L3MISS ;
 int arp_tbl ;
 scalar_t__ compare_ether_addr (int ,int ) ;
 TYPE_1__* eth_hdr (struct sk_buff*) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 scalar_t__ is_multicast_ether_addr (int ) ;
 int memcpy (int ,int ,int ) ;
 struct neighbour* neigh_lookup (int *,int *,struct net_device*) ;
 int neigh_release (struct neighbour*) ;
 struct vxlan_dev* netdev_priv (struct net_device*) ;
 int ntohs (int ) ;
 int pskb_may_pull (struct sk_buff*,int) ;
 int vxlan_ip_miss (struct net_device*,int ) ;

__attribute__((used)) static bool route_shortcircuit(struct net_device *dev, struct sk_buff *skb)
{
 struct vxlan_dev *vxlan = netdev_priv(dev);
 struct neighbour *n;
 struct iphdr *pip;

 if (is_multicast_ether_addr(eth_hdr(skb)->h_dest))
  return 0;

 n = ((void*)0);
 switch (ntohs(eth_hdr(skb)->h_proto)) {
 case 128:
  if (!pskb_may_pull(skb, sizeof(struct iphdr)))
   return 0;
  pip = ip_hdr(skb);
  n = neigh_lookup(&arp_tbl, &pip->daddr, dev);
  break;
 default:
  return 0;
 }

 if (n) {
  bool diff;

  diff = compare_ether_addr(eth_hdr(skb)->h_dest, n->ha) != 0;
  if (diff) {
   memcpy(eth_hdr(skb)->h_source, eth_hdr(skb)->h_dest,
    dev->addr_len);
   memcpy(eth_hdr(skb)->h_dest, n->ha, dev->addr_len);
  }
  neigh_release(n);
  return diff;
 } else if (vxlan->flags & VXLAN_F_L3MISS)
  vxlan_ip_miss(dev, pip->daddr);
 return 0;
}
