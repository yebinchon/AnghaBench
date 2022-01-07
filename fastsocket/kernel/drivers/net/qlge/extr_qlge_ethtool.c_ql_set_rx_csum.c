
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ql_adapter {int rx_csum; } ;
struct net_device {int dummy; } ;


 struct ql_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ql_set_rx_csum(struct net_device *netdev, uint32_t data)
{
 struct ql_adapter *qdev = netdev_priv(netdev);
 qdev->rx_csum = data;
 return 0;
}
