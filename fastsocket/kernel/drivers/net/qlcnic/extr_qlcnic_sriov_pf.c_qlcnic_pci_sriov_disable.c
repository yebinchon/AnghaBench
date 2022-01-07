
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_adapter {struct net_device* netdev; } ;
struct net_device {int dummy; } ;


 int EIO ;
 int __qlcnic_down (struct qlcnic_adapter*,struct net_device*) ;
 int __qlcnic_up (struct qlcnic_adapter*,struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 scalar_t__ qlcnic_83xx_configure_opmode (struct qlcnic_adapter*) ;
 int qlcnic_sriov_pf_cleanup (struct qlcnic_adapter*) ;
 int qlcnic_sriov_pf_disable (struct qlcnic_adapter*) ;

__attribute__((used)) static int qlcnic_pci_sriov_disable(struct qlcnic_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;

 if (netif_running(netdev))
  __qlcnic_down(adapter, netdev);

 qlcnic_sriov_pf_disable(adapter);

 qlcnic_sriov_pf_cleanup(adapter);




 if (qlcnic_83xx_configure_opmode(adapter))
  return -EIO;

 if (netif_running(netdev))
  __qlcnic_up(adapter, netdev);

 return 0;
}
