
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;


 int device_set_wakeup_capable (int *,int) ;
 int device_set_wakeup_enable (int *,int) ;
 int platform_pci_can_wakeup (struct pci_dev*) ;
 int platform_pci_sleep_wake (struct pci_dev*,int) ;

void platform_pci_wakeup_init(struct pci_dev *dev)
{
 if (!platform_pci_can_wakeup(dev))
  return;

 device_set_wakeup_capable(&dev->dev, 1);
 device_set_wakeup_enable(&dev->dev, 0);
 platform_pci_sleep_wake(dev, 0);
}
