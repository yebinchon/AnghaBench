
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct pci_dev {int dummy; } ;
struct msix_entry {int entry; int vector; } ;


 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PCIE_PORT_DEVICE_MAXSERVICES ;
 int PCIE_PORT_MAX_MSIX_ENTRIES ;
 int PCIE_PORT_SERVICE_AER ;
 size_t PCIE_PORT_SERVICE_AER_SHIFT ;
 int PCIE_PORT_SERVICE_HP ;
 size_t PCIE_PORT_SERVICE_HP_SHIFT ;
 int PCIE_PORT_SERVICE_PME ;
 size_t PCIE_PORT_SERVICE_PME_SHIFT ;
 scalar_t__ PCI_ERR_ROOT_STATUS ;
 int PCI_EXP_FLAGS ;
 int PCI_EXP_FLAGS_IRQ ;
 int PCI_EXT_CAP_ID_ERR ;
 int kfree (struct msix_entry*) ;
 struct msix_entry* kzalloc (int,int ) ;
 int pci_disable_msix (struct pci_dev*) ;
 int pci_enable_msix (struct pci_dev*,struct msix_entry*,int) ;
 int pci_find_ext_capability (struct pci_dev*,int ) ;
 int pci_msix_table_size (struct pci_dev*) ;
 int pci_read_config_dword (struct pci_dev*,scalar_t__,int*) ;
 int pcie_capability_read_word (struct pci_dev*,int ,int*) ;
 int pcie_port_msix_add_entry (struct msix_entry*,int,int) ;

__attribute__((used)) static int pcie_port_enable_msix(struct pci_dev *dev, int *vectors, int mask)
{
 struct msix_entry *msix_entries;
 int idx[PCIE_PORT_DEVICE_MAXSERVICES];
 int nr_entries, status, pos, i, nvec;
 u16 reg16;
 u32 reg32;

 nr_entries = pci_msix_table_size(dev);
 if (!nr_entries)
  return -EINVAL;
 if (nr_entries > PCIE_PORT_MAX_MSIX_ENTRIES)
  nr_entries = PCIE_PORT_MAX_MSIX_ENTRIES;

 msix_entries = kzalloc(sizeof(*msix_entries) * nr_entries, GFP_KERNEL);
 if (!msix_entries)
  return -ENOMEM;







 for (i = 0; i < nr_entries; i++)
  msix_entries[i].entry = i;

 status = pci_enable_msix(dev, msix_entries, nr_entries);
 if (status)
  goto Exit;

 for (i = 0; i < PCIE_PORT_DEVICE_MAXSERVICES; i++)
  idx[i] = -1;
 status = -EIO;
 nvec = 0;

 if (mask & (PCIE_PORT_SERVICE_PME | PCIE_PORT_SERVICE_HP)) {
  int entry;
  pcie_capability_read_word(dev, PCI_EXP_FLAGS, &reg16);
  entry = (reg16 & PCI_EXP_FLAGS_IRQ) >> 9;
  if (entry >= nr_entries)
   goto Error;

  i = pcie_port_msix_add_entry(msix_entries, entry, nvec);
  if (i == nvec)
   nvec++;

  idx[PCIE_PORT_SERVICE_PME_SHIFT] = i;
  idx[PCIE_PORT_SERVICE_HP_SHIFT] = i;
 }

 if (mask & PCIE_PORT_SERVICE_AER) {
  int entry;
  pos = pci_find_ext_capability(dev, PCI_EXT_CAP_ID_ERR);
  pci_read_config_dword(dev, pos + PCI_ERR_ROOT_STATUS, &reg32);
  entry = reg32 >> 27;
  if (entry >= nr_entries)
   goto Error;

  i = pcie_port_msix_add_entry(msix_entries, entry, nvec);
  if (i == nvec)
   nvec++;

  idx[PCIE_PORT_SERVICE_AER_SHIFT] = i;
 }






 if (nvec == nr_entries) {
  status = 0;
 } else {

  pci_disable_msix(dev);


  status = pci_enable_msix(dev, msix_entries, nvec);
  if (status)
   goto Exit;
 }

 for (i = 0; i < PCIE_PORT_DEVICE_MAXSERVICES; i++)
  vectors[i] = idx[i] >= 0 ? msix_entries[idx[i]].vector : -1;

 Exit:
 kfree(msix_entries);
 return status;

 Error:
 pci_disable_msix(dev);
 goto Exit;
}
