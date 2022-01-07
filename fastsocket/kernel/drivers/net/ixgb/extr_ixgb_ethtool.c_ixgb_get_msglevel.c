
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct ixgb_adapter {int msg_enable; } ;


 struct ixgb_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32
ixgb_get_msglevel(struct net_device *netdev)
{
 struct ixgb_adapter *adapter = netdev_priv(netdev);
 return adapter->msg_enable;
}
