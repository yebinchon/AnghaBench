
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int tip ;
struct vxlan_fdb {int dummy; } ;
struct vxlan_dev {int flags; } ;
struct sk_buff {int pkt_type; int ip_summed; } ;
struct TYPE_3__ {int rx_dropped; int tx_dropped; } ;
struct net_device {int flags; scalar_t__ addr_len; TYPE_1__ stats; } ;
struct neighbour {int nud_state; int ha; } ;
struct arphdr {scalar_t__ ar_hrd; scalar_t__ ar_pro; scalar_t__ ar_op; scalar_t__ ar_hln; int ar_pln; } ;
typedef int sip ;
typedef int __be32 ;
struct TYPE_4__ {scalar_t__ remote_ip; } ;


 int ARPHRD_ETHER ;
 int ARPHRD_IEEE802 ;
 int ARPOP_REPLY ;
 int ARPOP_REQUEST ;
 int CHECKSUM_UNNECESSARY ;
 int ETH_P_ARP ;
 int ETH_P_IP ;
 int IFF_NOARP ;
 int INADDR_ANY ;
 int NETDEV_TX_OK ;
 scalar_t__ NET_RX_DROP ;
 int NUD_CONNECTED ;
 int PACKET_HOST ;
 int VXLAN_F_L3MISS ;
 int __skb_pull (struct sk_buff*,int ) ;
 struct sk_buff* arp_create (int ,int ,int ,struct net_device*,int ,int *,int ,int *) ;
 struct arphdr* arp_hdr (struct sk_buff*) ;
 int arp_hdr_len (struct net_device*) ;
 int arp_tbl ;
 int consume_skb (struct sk_buff*) ;
 TYPE_2__* first_remote_rcu (struct vxlan_fdb*) ;
 scalar_t__ htonl (int ) ;
 scalar_t__ htons (int ) ;
 scalar_t__ ipv4_is_loopback (int ) ;
 scalar_t__ ipv4_is_multicast (int ) ;
 int memcpy (int *,int *,int) ;
 struct neighbour* neigh_lookup (int *,int *,struct net_device*) ;
 int neigh_release (struct neighbour*) ;
 struct vxlan_dev* netdev_priv (struct net_device*) ;
 scalar_t__ netif_rx_ni (struct sk_buff*) ;
 int pskb_may_pull (struct sk_buff*,int ) ;
 int skb_network_offset (struct sk_buff*) ;
 int skb_reset_mac_header (struct sk_buff*) ;
 struct vxlan_fdb* vxlan_find_mac (struct vxlan_dev*,int ) ;
 int vxlan_ip_miss (struct net_device*,int ) ;

__attribute__((used)) static int arp_reduce(struct net_device *dev, struct sk_buff *skb)
{
 struct vxlan_dev *vxlan = netdev_priv(dev);
 struct arphdr *parp;
 u8 *arpptr, *sha;
 __be32 sip, tip;
 struct neighbour *n;

 if (dev->flags & IFF_NOARP)
  goto out;

 if (!pskb_may_pull(skb, arp_hdr_len(dev))) {
  dev->stats.tx_dropped++;
  goto out;
 }
 parp = arp_hdr(skb);

 if ((parp->ar_hrd != htons(ARPHRD_ETHER) &&
      parp->ar_hrd != htons(ARPHRD_IEEE802)) ||
     parp->ar_pro != htons(ETH_P_IP) ||
     parp->ar_op != htons(ARPOP_REQUEST) ||
     parp->ar_hln != dev->addr_len ||
     parp->ar_pln != 4)
  goto out;
 arpptr = (u8 *)parp + sizeof(struct arphdr);
 sha = arpptr;
 arpptr += dev->addr_len;
 memcpy(&sip, arpptr, sizeof(sip));
 arpptr += sizeof(sip);
 arpptr += dev->addr_len;
 memcpy(&tip, arpptr, sizeof(tip));

 if (ipv4_is_loopback(tip) ||
     ipv4_is_multicast(tip))
  goto out;

 n = neigh_lookup(&arp_tbl, &tip, dev);

 if (n) {
  struct vxlan_fdb *f;
  struct sk_buff *reply;

  if (!(n->nud_state & NUD_CONNECTED)) {
   neigh_release(n);
   goto out;
  }

  f = vxlan_find_mac(vxlan, n->ha);
  if (f && first_remote_rcu(f)->remote_ip == htonl(INADDR_ANY)) {

   neigh_release(n);
   goto out;
  }

  reply = arp_create(ARPOP_REPLY, ETH_P_ARP, sip, dev, tip, sha,
    n->ha, sha);

  neigh_release(n);

  skb_reset_mac_header(reply);
  __skb_pull(reply, skb_network_offset(reply));
  reply->ip_summed = CHECKSUM_UNNECESSARY;
  reply->pkt_type = PACKET_HOST;

  if (netif_rx_ni(reply) == NET_RX_DROP)
   dev->stats.rx_dropped++;
 } else if (vxlan->flags & VXLAN_F_L3MISS)
  vxlan_ip_miss(dev, tip);
out:
 consume_skb(skb);
 return NETDEV_TX_OK;
}
