
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct igbvf_adapter {int msg_enable; } ;


 struct igbvf_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void igbvf_set_msglevel(struct net_device *netdev, u32 data)
{
 struct igbvf_adapter *adapter = netdev_priv(netdev);
 adapter->msg_enable = data;
}
