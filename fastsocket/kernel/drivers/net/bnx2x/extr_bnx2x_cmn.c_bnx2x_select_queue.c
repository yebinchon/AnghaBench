
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct vlan_ethhdr {int h_vlan_encapsulated_proto; } ;
struct sk_buff {scalar_t__ data; } ;
struct net_device {int dummy; } ;
struct ethhdr {int h_proto; } ;
struct bnx2x {int dummy; } ;


 scalar_t__ BNX2X_NUM_ETH_QUEUES (struct bnx2x*) ;
 scalar_t__ CNIC_LOADED (struct bnx2x*) ;
 scalar_t__ ETH_P_8021Q ;
 scalar_t__ ETH_P_FCOE ;
 scalar_t__ ETH_P_FIP ;
 int NO_FCOE (struct bnx2x*) ;
 scalar_t__ __netdev_pick_tx (struct net_device*,struct sk_buff*) ;
 scalar_t__ bnx2x_fcoe_tx (struct bnx2x*,int ) ;
 struct bnx2x* netdev_priv (struct net_device*) ;
 scalar_t__ ntohs (int ) ;
 int txq_index ;

u16 bnx2x_select_queue(struct net_device *dev, struct sk_buff *skb)
{
 struct bnx2x *bp = netdev_priv(dev);

 if (CNIC_LOADED(bp) && !NO_FCOE(bp)) {
  struct ethhdr *hdr = (struct ethhdr *)skb->data;
  u16 ether_type = ntohs(hdr->h_proto);


  if (ether_type == ETH_P_8021Q) {
   struct vlan_ethhdr *vhdr =
    (struct vlan_ethhdr *)skb->data;

   ether_type = ntohs(vhdr->h_vlan_encapsulated_proto);
  }


  if ((ether_type == ETH_P_FCOE) || (ether_type == ETH_P_FIP))
   return bnx2x_fcoe_tx(bp, txq_index);
 }


 return __netdev_pick_tx(dev, skb) % BNX2X_NUM_ETH_QUEUES(bp);
}
