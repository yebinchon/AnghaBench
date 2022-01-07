
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct net_device {int dummy; } ;
struct bnx2x {int dummy; } ;
typedef int pm_message_t ;


 int ENODEV ;
 int UNLOAD_CLOSE ;
 int bnx2x_nic_unload (struct bnx2x*,int ,int) ;
 int bnx2x_set_power_state (struct bnx2x*,int ) ;
 int dev_err (int *,char*) ;
 struct bnx2x* netdev_priv (struct net_device*) ;
 int netif_device_detach (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int pci_choose_state (struct pci_dev*,int ) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_save_state (struct pci_dev*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

int bnx2x_suspend(struct pci_dev *pdev, pm_message_t state)
{
 struct net_device *dev = pci_get_drvdata(pdev);
 struct bnx2x *bp;

 if (!dev) {
  dev_err(&pdev->dev, "BAD net device from bnx2x_init_one\n");
  return -ENODEV;
 }
 bp = netdev_priv(dev);

 rtnl_lock();

 pci_save_state(pdev);

 if (!netif_running(dev)) {
  rtnl_unlock();
  return 0;
 }

 netif_device_detach(dev);

 bnx2x_nic_unload(bp, UNLOAD_CLOSE, 0);

 bnx2x_set_power_state(bp, pci_choose_state(pdev, state));

 rtnl_unlock();

 return 0;
}
