
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int features; } ;
struct TYPE_3__ {int type; } ;
struct TYPE_4__ {TYPE_1__ mac; } ;
struct ixgbe_adapter {TYPE_2__ hw; } ;


 int NETIF_F_IPV6_CSUM ;
 int NETIF_F_IP_CSUM ;
 int NETIF_F_SCTP_CSUM ;


 struct ixgbe_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ixgbe_set_tx_csum(struct net_device *netdev, u32 data)
{
 struct ixgbe_adapter *adapter = netdev_priv(netdev);
 u32 feature_list;

 feature_list = (NETIF_F_IP_CSUM | NETIF_F_IPV6_CSUM);
 switch (adapter->hw.mac.type) {
 case 129:
 case 128:
  feature_list |= NETIF_F_SCTP_CSUM;
  break;
 default:
  break;
 }
 if (data)
  netdev->features |= feature_list;
 else
  netdev->features &= ~feature_list;

 return 0;
}
