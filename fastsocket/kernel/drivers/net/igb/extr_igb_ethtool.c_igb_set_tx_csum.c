
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct net_device {int features; } ;
struct TYPE_3__ {scalar_t__ type; } ;
struct TYPE_4__ {TYPE_1__ mac; } ;
struct igb_adapter {TYPE_2__ hw; } ;


 int NETIF_F_IPV6_CSUM ;
 int NETIF_F_IP_CSUM ;
 int NETIF_F_SCTP_CSUM ;
 scalar_t__ e1000_82576 ;
 struct igb_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int igb_set_tx_csum(struct net_device *netdev, u32 data)
{
 struct igb_adapter *adapter = netdev_priv(netdev);

 if (data) {
  netdev->features |= (NETIF_F_IP_CSUM | NETIF_F_IPV6_CSUM);
  if (adapter->hw.mac.type >= e1000_82576)
   netdev->features |= NETIF_F_SCTP_CSUM;
 } else {
  netdev->features &= ~(NETIF_F_IP_CSUM | NETIF_F_IPV6_CSUM |
                        NETIF_F_SCTP_CSUM);
 }

 return 0;
}
