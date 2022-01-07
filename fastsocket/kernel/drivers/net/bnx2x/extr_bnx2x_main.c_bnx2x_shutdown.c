
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct bnx2x {int dummy; } ;


 int __bnx2x_remove (struct pci_dev*,struct net_device*,struct bnx2x*,int) ;
 struct bnx2x* netdev_priv (struct net_device*) ;
 int netif_device_detach (struct net_device*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

__attribute__((used)) static void bnx2x_shutdown(struct pci_dev *pdev)
{
 struct net_device *dev = pci_get_drvdata(pdev);
 struct bnx2x *bp;

 if (!dev)
  return;

 bp = netdev_priv(dev);
 if (!bp)
  return;

 rtnl_lock();
 netif_device_detach(dev);
 rtnl_unlock();





 __bnx2x_remove(pdev, dev, bp, 0);
}
