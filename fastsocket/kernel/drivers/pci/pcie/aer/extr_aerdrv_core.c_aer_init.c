
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcie_device {int port; int device; } ;


 int KERN_DEBUG ;
 int dev_printk (int ,int *,char*) ;
 scalar_t__ forceload ;
 int pcie_aer_force_firmware_first (int ,int ) ;

int aer_init(struct pcie_device *dev)
{
 if (forceload) {
  dev_printk(KERN_DEBUG, &dev->device,
      "aerdrv forceload requested.\n");
  pcie_aer_force_firmware_first(dev->port, 0);
 }
 return 0;
}
