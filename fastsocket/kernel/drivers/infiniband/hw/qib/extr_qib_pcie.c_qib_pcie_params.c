
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct qib_msix_entry {int dummy; } ;
struct qib_devdata {int lbus_width; int lbus_speed; int lbus_info; int pcidev; } ;


 int PCI_CAP_ID_MSI ;
 int PCI_CAP_ID_MSIX ;
 int PCI_EXP_LNKSTA ;
 int pci_find_capability (int ,int ) ;
 int pci_is_pcie (int ) ;
 int pcie_capability_read_word (int ,int ,int*) ;
 int qib_dev_err (struct qib_devdata*,char*,...) ;
 int qib_enable_intx (int ) ;
 int qib_msi_setup (struct qib_devdata*,int) ;
 int qib_msix_setup (struct qib_devdata*,int,int*,struct qib_msix_entry*) ;
 int qib_tune_pcie_caps (struct qib_devdata*) ;
 int qib_tune_pcie_coalesce (struct qib_devdata*) ;
 int snprintf (int ,int,char*,int,int) ;

int qib_pcie_params(struct qib_devdata *dd, u32 minw, u32 *nent,
      struct qib_msix_entry *entry)
{
 u16 linkstat, speed;
 int pos = 0, ret = 1;

 if (!pci_is_pcie(dd->pcidev)) {
  qib_dev_err(dd, "Can't find PCI Express capability!\n");

  dd->lbus_width = 1;
  dd->lbus_speed = 2500;
  goto bail;
 }

 pos = pci_find_capability(dd->pcidev, PCI_CAP_ID_MSIX);
 if (nent && *nent && pos) {
  qib_msix_setup(dd, pos, nent, entry);
  ret = 0;
 } else {
  pos = pci_find_capability(dd->pcidev, PCI_CAP_ID_MSI);
  if (pos)
   ret = qib_msi_setup(dd, pos);
  else
   qib_dev_err(dd, "No PCI MSI or MSIx capability!\n");
 }
 if (!pos)
  qib_enable_intx(dd->pcidev);

 pcie_capability_read_word(dd->pcidev, PCI_EXP_LNKSTA, &linkstat);




 speed = linkstat & 0xf;
 linkstat >>= 4;
 linkstat &= 0x1f;
 dd->lbus_width = linkstat;

 switch (speed) {
 case 1:
  dd->lbus_speed = 2500;
  break;
 case 2:
  dd->lbus_speed = 5000;
  break;
 default:
  dd->lbus_speed = 2500;
  break;
 }





 if (minw && linkstat < minw)
  qib_dev_err(dd,
       "PCIe width %u (x%u HCA), performance reduced\n",
       linkstat, minw);

 qib_tune_pcie_caps(dd);

 qib_tune_pcie_coalesce(dd);

bail:

 snprintf(dd->lbus_info, sizeof(dd->lbus_info),
   "PCIe,%uMHz,x%u\n", dd->lbus_speed, dd->lbus_width);
 return ret;
}
