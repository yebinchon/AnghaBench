
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct velocity_info {int pdev; } ;
struct net_device {int dummy; } ;


 int PCI_D0 ;
 struct velocity_info* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int pci_set_power_state (int ,int ) ;

__attribute__((used)) static int velocity_ethtool_up(struct net_device *dev)
{
 struct velocity_info *vptr = netdev_priv(dev);
 if (!netif_running(dev))
  pci_set_power_state(vptr->pdev, PCI_D0);
 return 0;
}
