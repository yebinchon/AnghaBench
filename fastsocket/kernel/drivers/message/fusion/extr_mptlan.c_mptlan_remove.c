
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {struct net_device* netdev; } ;
typedef TYPE_1__ MPT_ADAPTER ;


 int free_netdev (struct net_device*) ;
 TYPE_1__* pci_get_drvdata (struct pci_dev*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void
mptlan_remove(struct pci_dev *pdev)
{
 MPT_ADAPTER *ioc = pci_get_drvdata(pdev);
 struct net_device *dev = ioc->netdev;

 if(dev != ((void*)0)) {
  unregister_netdev(dev);
  free_netdev(dev);
 }
}
