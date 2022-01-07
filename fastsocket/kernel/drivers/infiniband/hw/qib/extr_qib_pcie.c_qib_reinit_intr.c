
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct qib_devdata {int msi_data; int flags; int pcidev; int msi_hi; int msi_lo; } ;


 int PCI_CAP_ID_MSI ;
 scalar_t__ PCI_MSI_ADDRESS_HI ;
 scalar_t__ PCI_MSI_ADDRESS_LO ;
 int PCI_MSI_FLAGS ;
 int PCI_MSI_FLAGS_64BIT ;
 int PCI_MSI_FLAGS_ENABLE ;
 int QIB_HAS_INTX ;
 int pci_find_capability (int ,int ) ;
 int pci_read_config_word (int ,int,int*) ;
 int pci_set_master (int ) ;
 int pci_write_config_dword (int ,scalar_t__,int ) ;
 int pci_write_config_word (int ,int,int) ;
 int qib_dev_err (struct qib_devdata*,char*) ;
 int qib_enable_intx (int ) ;

int qib_reinit_intr(struct qib_devdata *dd)
{
 int pos;
 u16 control;
 int ret = 0;


 if (!dd->msi_lo)
  goto bail;

 pos = pci_find_capability(dd->pcidev, PCI_CAP_ID_MSI);
 if (!pos) {
  qib_dev_err(dd,
   "Can't find MSI capability, can't restore MSI settings\n");
  ret = 0;

  goto bail;
 }
 pci_write_config_dword(dd->pcidev, pos + PCI_MSI_ADDRESS_LO,
          dd->msi_lo);
 pci_write_config_dword(dd->pcidev, pos + PCI_MSI_ADDRESS_HI,
          dd->msi_hi);
 pci_read_config_word(dd->pcidev, pos + PCI_MSI_FLAGS, &control);
 if (!(control & PCI_MSI_FLAGS_ENABLE)) {
  control |= PCI_MSI_FLAGS_ENABLE;
  pci_write_config_word(dd->pcidev, pos + PCI_MSI_FLAGS,
          control);
 }

 pci_write_config_word(dd->pcidev, pos +
         ((control & PCI_MSI_FLAGS_64BIT) ? 12 : 8),
         dd->msi_data);
 ret = 1;
bail:
 if (!ret && (dd->flags & QIB_HAS_INTX)) {
  qib_enable_intx(dd->pcidev);
  ret = 1;
 }


 pci_set_master(dd->pcidev);

 return ret;
}
