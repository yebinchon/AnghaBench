
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sem; } ;
struct pci_dev {TYPE_1__ dev; } ;


 int ENOTTY ;
 int down (int *) ;
 int might_sleep () ;
 int pci_af_flr (struct pci_dev*,int) ;
 int pci_cfg_access_lock (struct pci_dev*) ;
 int pci_cfg_access_unlock (struct pci_dev*) ;
 int pci_dev_specific_reset (struct pci_dev*,int) ;
 int pci_parent_bus_reset (struct pci_dev*,int) ;
 int pci_pm_reset (struct pci_dev*,int) ;
 int pcie_flr (struct pci_dev*,int) ;
 int up (int *) ;

__attribute__((used)) static int pci_dev_reset(struct pci_dev *dev, int probe)
{
 int rc;

 might_sleep();

 if (!probe) {
  pci_cfg_access_lock(dev);

  down(&dev->dev.sem);
 }

 rc = pci_dev_specific_reset(dev, probe);
 if (rc != -ENOTTY)
  goto done;

 rc = pcie_flr(dev, probe);
 if (rc != -ENOTTY)
  goto done;

 rc = pci_af_flr(dev, probe);
 if (rc != -ENOTTY)
  goto done;

 rc = pci_pm_reset(dev, probe);
 if (rc != -ENOTTY)
  goto done;

 rc = pci_parent_bus_reset(dev, probe);
done:
 if (!probe) {
  up(&dev->dev.sem);
  pci_cfg_access_unlock(dev);
 }

 return rc;
}
