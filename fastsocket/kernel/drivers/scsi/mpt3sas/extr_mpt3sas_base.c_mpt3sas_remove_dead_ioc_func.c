
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct MPT3SAS_ADAPTER {struct pci_dev* pdev; } ;


 int pci_remove_bus_device (struct pci_dev*) ;

__attribute__((used)) static int mpt3sas_remove_dead_ioc_func(void *arg)
{
 struct MPT3SAS_ADAPTER *ioc = (struct MPT3SAS_ADAPTER *)arg;
 struct pci_dev *pdev;

 if ((ioc == ((void*)0)))
  return -1;

 pdev = ioc->pdev;
 if ((pdev == ((void*)0)))
  return -1;
 pci_remove_bus_device(pdev);
 return 0;
}
