
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int features; int vlan_features; int * netdev_ops; int flags; } ;
struct be_adapter {int rx_csum; } ;


 scalar_t__ ETH_HLEN ;
 int IFF_MULTICAST ;
 int NETIF_F_GRO ;
 int NETIF_F_HW_VLAN_FILTER ;
 int NETIF_F_HW_VLAN_RX ;
 int NETIF_F_HW_VLAN_TX ;
 int NETIF_F_IPV6_CSUM ;
 int NETIF_F_IP_CSUM ;
 int NETIF_F_RXHASH ;
 int NETIF_F_SG ;
 int NETIF_F_TSO ;
 int NETIF_F_TSO6 ;
 int SET_ETHTOOL_OPS (struct net_device*,int *) ;
 int be_ethtool_ops ;
 int be_ethtool_ops_ext ;
 scalar_t__ be_multi_rxq (struct be_adapter*) ;
 int be_netdev_ops ;
 struct be_adapter* netdev_priv (struct net_device*) ;
 int netif_set_gso_max_size (struct net_device*,scalar_t__) ;
 int set_ethtool_ops_ext (struct net_device*,int *) ;

__attribute__((used)) static void be_netdev_init(struct net_device *netdev)
{
 struct be_adapter *adapter = netdev_priv(netdev);

 netdev->features |= NETIF_F_SG | NETIF_F_TSO | NETIF_F_TSO6 |
  NETIF_F_IP_CSUM | NETIF_F_IPV6_CSUM |
  NETIF_F_HW_VLAN_RX | NETIF_F_HW_VLAN_TX |
  NETIF_F_HW_VLAN_FILTER | NETIF_F_GRO;

 if (be_multi_rxq(adapter))
  netdev->features |= NETIF_F_RXHASH;

 netdev->vlan_features |= NETIF_F_SG | NETIF_F_TSO | NETIF_F_TSO6 |
  NETIF_F_IP_CSUM | NETIF_F_IPV6_CSUM | NETIF_F_GRO;

 netdev->flags |= IFF_MULTICAST;

 adapter->rx_csum = 1;

 netif_set_gso_max_size(netdev, 65535 - ETH_HLEN);

 netdev->netdev_ops = &be_netdev_ops;

 SET_ETHTOOL_OPS(netdev, &be_ethtool_ops);
 set_ethtool_ops_ext(netdev, &be_ethtool_ops_ext);
}
