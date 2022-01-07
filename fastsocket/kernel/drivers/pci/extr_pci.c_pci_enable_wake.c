
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int wakeup_prepared; int dev; } ;
typedef int pci_power_t ;


 int EINVAL ;
 int device_may_wakeup (int *) ;
 int pci_pme_active (struct pci_dev*,int) ;
 scalar_t__ pci_pme_capable (struct pci_dev*,int ) ;
 int platform_pci_sleep_wake (struct pci_dev*,int) ;

int pci_enable_wake(struct pci_dev *dev, pci_power_t state, bool enable)
{
 int ret = 0;

 if (enable && !device_may_wakeup(&dev->dev))
  return -EINVAL;


 if (!!enable == !!dev->wakeup_prepared)
  return 0;







 if (enable) {
  int error;

  if (pci_pme_capable(dev, state))
   pci_pme_active(dev, 1);
  else
   ret = 1;
  error = platform_pci_sleep_wake(dev, 1);
  if (ret)
   ret = error;
  if (!ret)
   dev->wakeup_prepared = 1;
 } else {
  platform_pci_sleep_wake(dev, 0);
  pci_pme_active(dev, 0);
  dev->wakeup_prepared = 0;
 }

 return ret;
}
