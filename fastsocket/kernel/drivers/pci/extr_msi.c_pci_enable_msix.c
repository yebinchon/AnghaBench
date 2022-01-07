
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; scalar_t__ msi_enabled; int msix_enabled; } ;
struct msix_entry {int entry; } ;


 int EINVAL ;
 int PCI_CAP_ID_MSIX ;
 int WARN_ON (int) ;
 int dev_info (int *,char*) ;
 int msix_capability_init (struct pci_dev*,struct msix_entry*,int) ;
 int pci_msi_check_device (struct pci_dev*,int,int ) ;
 int pci_msix_table_size (struct pci_dev*) ;

int pci_enable_msix(struct pci_dev *dev, struct msix_entry *entries, int nvec)
{
 int status, nr_entries;
 int i, j;

 if (!entries)
  return -EINVAL;

 status = pci_msi_check_device(dev, nvec, PCI_CAP_ID_MSIX);
 if (status)
  return status;

 nr_entries = pci_msix_table_size(dev);
 if (nvec > nr_entries)
  return nr_entries;


 for (i = 0; i < nvec; i++) {
  if (entries[i].entry >= nr_entries)
   return -EINVAL;
  for (j = i + 1; j < nvec; j++) {
   if (entries[i].entry == entries[j].entry)
    return -EINVAL;
  }
 }
 WARN_ON(!!dev->msix_enabled);


 if (dev->msi_enabled) {
  dev_info(&dev->dev, "can't enable MSI-X "
         "(MSI IRQ already assigned)\n");
  return -EINVAL;
 }
 status = msix_capability_init(dev, entries, nvec);
 return status;
}
