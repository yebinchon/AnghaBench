
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct igbvf_adapter {int flags; } ;


 int IGBVF_FLAG_RX_CSUM_DISABLED ;
 struct igbvf_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int igbvf_set_rx_csum(struct net_device *netdev, u32 data)
{
 struct igbvf_adapter *adapter = netdev_priv(netdev);

 if (data)
  adapter->flags &= ~IGBVF_FLAG_RX_CSUM_DISABLED;
 else
  adapter->flags |= IGBVF_FLAG_RX_CSUM_DISABLED;

 return 0;
}
