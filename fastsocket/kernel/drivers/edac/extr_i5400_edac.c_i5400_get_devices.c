
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int device; int vendor; int devfn; } ;
struct mem_ctl_info {struct i5400_pvt* pvt_info; } ;
struct i5400_pvt {scalar_t__ maxch; int * branch_1; int * branch_0; struct pci_dev* fsb_error_regs; struct pci_dev* branchmap_werrors; struct pci_dev* system_address; } ;


 scalar_t__ CHANNELS_PER_BRANCH ;
 int ENODEV ;
 int KERN_ERR ;
 int PCI_DEVICE_ID_INTEL_5400_ERR ;
 int PCI_DEVICE_ID_INTEL_5400_FBD0 ;
 int PCI_DEVICE_ID_INTEL_5400_FBD1 ;
 int PCI_FUNC (int ) ;
 int PCI_VENDOR_ID_INTEL ;
 int debugf1 (char*,int ,int ,int ) ;
 int i5400_printk (int ,char*,int ,int ) ;
 int i5400_put_devices (struct mem_ctl_info*) ;
 void* pci_get_device (int ,int ,struct pci_dev*) ;
 int pci_name (struct pci_dev*) ;

__attribute__((used)) static int i5400_get_devices(struct mem_ctl_info *mci, int dev_idx)
{
 struct i5400_pvt *pvt;
 struct pci_dev *pdev;

 pvt = mci->pvt_info;
 pvt->branchmap_werrors = ((void*)0);
 pvt->fsb_error_regs = ((void*)0);
 pvt->branch_0 = ((void*)0);
 pvt->branch_1 = ((void*)0);


 pdev = ((void*)0);
 while (!pvt->branchmap_werrors || !pvt->fsb_error_regs) {
  pdev = pci_get_device(PCI_VENDOR_ID_INTEL,
          PCI_DEVICE_ID_INTEL_5400_ERR, pdev);
  if (!pdev) {

   i5400_printk(KERN_ERR,
    "'system address,Process Bus' "
    "device not found:"
    "vendor 0x%x device 0x%x ERR funcs "
    "(broken BIOS?)\n",
    PCI_VENDOR_ID_INTEL,
    PCI_DEVICE_ID_INTEL_5400_ERR);
   goto error;
  }


  switch (PCI_FUNC(pdev->devfn)) {
  case 1:
   pvt->branchmap_werrors = pdev;
   break;
  case 2:
   pvt->fsb_error_regs = pdev;
   break;
  }
 }

 debugf1("System Address, processor bus- PCI Bus ID: %s  %x:%x\n",
  pci_name(pvt->system_address),
  pvt->system_address->vendor, pvt->system_address->device);
 debugf1("Branchmap, control and errors - PCI Bus ID: %s  %x:%x\n",
  pci_name(pvt->branchmap_werrors),
  pvt->branchmap_werrors->vendor, pvt->branchmap_werrors->device);
 debugf1("FSB Error Regs - PCI Bus ID: %s  %x:%x\n",
  pci_name(pvt->fsb_error_regs),
  pvt->fsb_error_regs->vendor, pvt->fsb_error_regs->device);

 pvt->branch_0 = pci_get_device(PCI_VENDOR_ID_INTEL,
           PCI_DEVICE_ID_INTEL_5400_FBD0, ((void*)0));
 if (!pvt->branch_0) {
  i5400_printk(KERN_ERR,
   "MC: 'BRANCH 0' device not found:"
   "vendor 0x%x device 0x%x Func 0 (broken BIOS?)\n",
   PCI_VENDOR_ID_INTEL, PCI_DEVICE_ID_INTEL_5400_FBD0);
  goto error;
 }




 if (pvt->maxch < CHANNELS_PER_BRANCH)
  return 0;

 pvt->branch_1 = pci_get_device(PCI_VENDOR_ID_INTEL,
           PCI_DEVICE_ID_INTEL_5400_FBD1, ((void*)0));
 if (!pvt->branch_1) {
  i5400_printk(KERN_ERR,
   "MC: 'BRANCH 1' device not found:"
   "vendor 0x%x device 0x%x Func 0 "
   "(broken BIOS?)\n",
   PCI_VENDOR_ID_INTEL,
   PCI_DEVICE_ID_INTEL_5400_FBD1);
  goto error;
 }

 return 0;

error:
 i5400_put_devices(mci);
 return -ENODEV;
}
