
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int pkt_type; struct net_device* dev; } ;
struct net_device {int broadcast; } ;
struct macvlan_dev {int (* forward ) (struct net_device*,struct sk_buff*) ;int (* receive ) (struct sk_buff*) ;struct net_device* dev; } ;
struct ethhdr {int h_dest; } ;


 int NET_RX_DROP ;
 int PACKET_BROADCAST ;
 int PACKET_MULTICAST ;
 int compare_ether_addr_64bits (int ,int ) ;
 int stub1 (struct net_device*,struct sk_buff*) ;
 int stub2 (struct sk_buff*) ;

__attribute__((used)) static int macvlan_broadcast_one(struct sk_buff *skb,
     const struct macvlan_dev *vlan,
     const struct ethhdr *eth, bool local)
{
 struct net_device *dev = vlan->dev;
 if (!skb)
  return NET_RX_DROP;

 if (local)
  return vlan->forward(dev, skb);

 skb->dev = dev;
 if (!compare_ether_addr_64bits(eth->h_dest,
           dev->broadcast))
  skb->pkt_type = PACKET_BROADCAST;
 else
  skb->pkt_type = PACKET_MULTICAST;

 return vlan->receive(skb);
}
