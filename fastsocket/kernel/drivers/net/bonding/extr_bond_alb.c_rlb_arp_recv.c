
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; scalar_t__ data; } ;
struct packet_type {int dummy; } ;
struct net_device {int priv_flags; int flags; } ;
struct bonding {int dummy; } ;
struct arp_pkt {scalar_t__ op_code; } ;


 int ARPOP_REPLY ;
 int GFP_ATOMIC ;
 int IFF_802_1Q_VLAN ;
 int IFF_BONDING ;
 int IFF_MASTER ;
 int NET_RX_DROP ;
 int NET_RX_SUCCESS ;
 int arp_hdr_len (struct net_device*) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int * dev_net (struct net_device*) ;
 scalar_t__ htons (int ) ;
 int init_net ;
 struct bonding* netdev_priv (struct net_device*) ;
 int pr_debug (char*) ;
 int pskb_may_pull (struct sk_buff*,int ) ;
 int rlb_update_entry_from_arp (struct bonding*,struct arp_pkt*) ;
 struct sk_buff* skb_share_check (struct sk_buff*,int ) ;
 struct net_device* vlan_dev_real_dev (struct net_device*) ;

__attribute__((used)) static int rlb_arp_recv(struct sk_buff *skb, struct net_device *bond_dev, struct packet_type *ptype, struct net_device *orig_dev)
{
 struct bonding *bond;
 struct arp_pkt *arp = (struct arp_pkt *)skb->data;
 int res = NET_RX_DROP;

 if (dev_net(bond_dev) != &init_net)
  goto out;

 while (bond_dev->priv_flags & IFF_802_1Q_VLAN)
  bond_dev = vlan_dev_real_dev(bond_dev);

 if (!(bond_dev->priv_flags & IFF_BONDING) ||
     !(bond_dev->flags & IFF_MASTER))
  goto out;

 if (!arp) {
  pr_debug("Packet has no ARP data\n");
  goto out;
 }

 skb = skb_share_check(skb, GFP_ATOMIC);
 if (!skb)
  goto out;

 if (!pskb_may_pull(skb, arp_hdr_len(bond_dev)))
  goto out;

 if (skb->len < sizeof(struct arp_pkt)) {
  pr_debug("Packet is too small to be an ARP\n");
  goto out;
 }

 if (arp->op_code == htons(ARPOP_REPLY)) {

  bond = netdev_priv(bond_dev);
  rlb_update_entry_from_arp(bond, arp);
  pr_debug("Server received an ARP Reply from client\n");
 }

 res = NET_RX_SUCCESS;

out:
 dev_kfree_skb(skb);

 return res;
}
