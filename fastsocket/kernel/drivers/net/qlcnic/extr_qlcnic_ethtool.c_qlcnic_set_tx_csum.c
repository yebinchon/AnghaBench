
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct qlcnic_adapter {int flags; } ;
struct net_device {int features; } ;


 int EOPNOTSUPP ;
 int NETIF_F_IPV6_CSUM ;
 int NETIF_F_IP_CSUM ;
 int QLCNIC_ESWITCH_ENABLED ;
 struct qlcnic_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ qlcnic_82xx_check (struct qlcnic_adapter*) ;

__attribute__((used)) static int qlcnic_set_tx_csum(struct net_device *dev, u32 data)
{
 struct qlcnic_adapter *adapter = netdev_priv(dev);

 if ((adapter->flags & QLCNIC_ESWITCH_ENABLED &&
     qlcnic_82xx_check(adapter)))
  return -EOPNOTSUPP;
 if (data)
  dev->features |= (NETIF_F_IP_CSUM | NETIF_F_IPV6_CSUM);
 else
  dev->features &= ~(NETIF_F_IP_CSUM | NETIF_F_IPV6_CSUM);

 return 0;

}
