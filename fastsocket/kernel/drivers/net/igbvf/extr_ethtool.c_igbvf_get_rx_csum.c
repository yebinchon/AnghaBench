
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct igbvf_adapter {int flags; } ;


 int IGBVF_FLAG_RX_CSUM_DISABLED ;
 struct igbvf_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 igbvf_get_rx_csum(struct net_device *netdev)
{
 struct igbvf_adapter *adapter = netdev_priv(netdev);
 return !(adapter->flags & IGBVF_FLAG_RX_CSUM_DISABLED);
}
