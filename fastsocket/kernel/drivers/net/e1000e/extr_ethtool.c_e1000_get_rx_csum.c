
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct e1000_adapter {int flags; } ;


 int FLAG_RX_CSUM_ENABLED ;
 struct e1000_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 e1000_get_rx_csum(struct net_device *netdev)
{
 struct e1000_adapter *adapter = netdev_priv(netdev);
 return adapter->flags & FLAG_RX_CSUM_ENABLED;
}
