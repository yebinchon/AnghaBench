
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int bus; } ;
struct e752x_pvt {int * bridge_ck; int dev_d0f1; struct pci_dev* dev_d0f0; TYPE_1__* dev_info; } ;
struct TYPE_4__ {int ctl_dev; int err_dev; } ;
struct TYPE_3__ {int err_dev; } ;


 int KERN_ERR ;
 int PCI_DEVFN (int ,int) ;
 int PCI_VENDOR_ID_INTEL ;
 TYPE_2__* e752x_devs ;
 int e752x_printk (int ,char*,int ,int ) ;
 int pci_dev_get (int *) ;
 int pci_dev_put (int *) ;
 void* pci_get_device (int ,int ,int *) ;
 int * pci_scan_single_device (int ,int ) ;

__attribute__((used)) static int e752x_get_devs(struct pci_dev *pdev, int dev_idx,
   struct e752x_pvt *pvt)
{
 struct pci_dev *dev;

 pvt->bridge_ck = pci_get_device(PCI_VENDOR_ID_INTEL,
    pvt->dev_info->err_dev, pvt->bridge_ck);

 if (pvt->bridge_ck == ((void*)0)) {
  pvt->bridge_ck = pci_scan_single_device(pdev->bus,
       PCI_DEVFN(0, 1));
  pci_dev_get(pvt->bridge_ck);
 }

 if (pvt->bridge_ck == ((void*)0)) {
  e752x_printk(KERN_ERR, "error reporting device not found:"
   "vendor %x device 0x%x (broken BIOS?)\n",
   PCI_VENDOR_ID_INTEL, e752x_devs[dev_idx].err_dev);
  return 1;
 }

 dev = pci_get_device(PCI_VENDOR_ID_INTEL,
    e752x_devs[dev_idx].ctl_dev,
    ((void*)0));

 if (dev == ((void*)0))
  goto fail;

 pvt->dev_d0f0 = dev;
 pvt->dev_d0f1 = pci_dev_get(pvt->bridge_ck);

 return 0;

fail:
 pci_dev_put(pvt->bridge_ck);
 return 1;
}
