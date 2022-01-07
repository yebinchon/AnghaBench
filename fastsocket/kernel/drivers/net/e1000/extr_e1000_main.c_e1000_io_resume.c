
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct e1000_adapter {int dummy; } ;


 int e1000_init_manageability (struct e1000_adapter*) ;
 scalar_t__ e1000_up (struct e1000_adapter*) ;
 struct e1000_adapter* netdev_priv (struct net_device*) ;
 int netif_device_attach (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pr_info (char*) ;

__attribute__((used)) static void e1000_io_resume(struct pci_dev *pdev)
{
 struct net_device *netdev = pci_get_drvdata(pdev);
 struct e1000_adapter *adapter = netdev_priv(netdev);

 e1000_init_manageability(adapter);

 if (netif_running(netdev)) {
  if (e1000_up(adapter)) {
   pr_info("can't bring device back up after reset\n");
   return;
  }
 }

 netif_device_attach(netdev);
}
