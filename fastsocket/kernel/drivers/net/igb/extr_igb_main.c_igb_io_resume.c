
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct net_device {int dummy; } ;
struct igb_adapter {int dummy; } ;


 int dev_err (int *,char*) ;
 int igb_get_hw_control (struct igb_adapter*) ;
 scalar_t__ igb_up (struct igb_adapter*) ;
 struct igb_adapter* netdev_priv (struct net_device*) ;
 int netif_device_attach (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static void igb_io_resume(struct pci_dev *pdev)
{
 struct net_device *netdev = pci_get_drvdata(pdev);
 struct igb_adapter *adapter = netdev_priv(netdev);

 if (netif_running(netdev)) {
  if (igb_up(adapter)) {
   dev_err(&pdev->dev, "igb_up failed after reset\n");
   return;
  }
 }

 netif_device_attach(netdev);




 igb_get_hw_control(adapter);
}
