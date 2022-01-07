
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_adapter {struct net_device* netdev; } ;
struct net_device {int dummy; } ;


 int NETDEV_UP ;
 int netif_device_attach (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int qlcnic_restore_indev_addr (struct net_device*,int ) ;
 int qlcnic_up (struct qlcnic_adapter*,struct net_device*) ;

__attribute__((used)) static void qlcnic_sriov_vf_attach(struct qlcnic_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;

 if (netif_running(netdev)) {
  if (!qlcnic_up(adapter, netdev))
   qlcnic_restore_indev_addr(netdev, NETDEV_UP);
 }

 netif_device_attach(netdev);
}
