
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct pci_dev {int msi_enabled; int irq; int msi_list; } ;
struct TYPE_2__ {int pos; scalar_t__ maskbit; int is_64; int default_irq; scalar_t__ entry_nr; scalar_t__ is_msix; } ;
struct msi_desc {int irq; int list; int masked; int mask_pos; TYPE_1__ msi_attrib; } ;


 int ENOMEM ;
 int PCI_CAP_ID_MSI ;
 struct msi_desc* alloc_msi_entry (struct pci_dev*) ;
 int arch_setup_msi_irqs (struct pci_dev*,int,int ) ;
 int free_msi_irqs (struct pci_dev*) ;
 int is_64bit_address (int ) ;
 scalar_t__ is_mask_bit_support (int ) ;
 int list_add_tail (int *,int *) ;
 unsigned int msi_capable_mask (int ) ;
 int msi_control_reg (int) ;
 int msi_mask_irq (struct msi_desc*,unsigned int,unsigned int) ;
 int msi_mask_reg (int,int ) ;
 int msi_set_enable (struct pci_dev*,int,int) ;
 int pci_find_capability (struct pci_dev*,int ) ;
 int pci_intx_for_msi (struct pci_dev*,int ) ;
 int pci_read_config_dword (struct pci_dev*,int ,int *) ;
 int pci_read_config_word (struct pci_dev*,int ,int *) ;
 int populate_msi_sysfs (struct pci_dev*) ;

__attribute__((used)) static int msi_capability_init(struct pci_dev *dev, int nvec)
{
 struct msi_desc *entry;
 int pos, ret;
 u16 control;
 unsigned mask;

 pos = pci_find_capability(dev, PCI_CAP_ID_MSI);
 msi_set_enable(dev, pos, 0);

 pci_read_config_word(dev, msi_control_reg(pos), &control);

 entry = alloc_msi_entry(dev);
 if (!entry)
  return -ENOMEM;

 entry->msi_attrib.is_msix = 0;
 entry->msi_attrib.is_64 = is_64bit_address(control);
 entry->msi_attrib.entry_nr = 0;
 entry->msi_attrib.maskbit = is_mask_bit_support(control);
 entry->msi_attrib.default_irq = dev->irq;
 entry->msi_attrib.pos = pos;

 entry->mask_pos = msi_mask_reg(pos, entry->msi_attrib.is_64);

 if (entry->msi_attrib.maskbit)
  pci_read_config_dword(dev, entry->mask_pos, &entry->masked);
 mask = msi_capable_mask(control);
 msi_mask_irq(entry, mask, mask);

 list_add_tail(&entry->list, &dev->msi_list);


 ret = arch_setup_msi_irqs(dev, nvec, PCI_CAP_ID_MSI);
 if (ret) {
  msi_mask_irq(entry, mask, ~mask);
  free_msi_irqs(dev);
  return ret;
 }

 ret = populate_msi_sysfs(dev);
 if (ret) {
  msi_mask_irq(entry, mask, ~mask);
  free_msi_irqs(dev);
  return ret;
 }


 pci_intx_for_msi(dev, 0);
 msi_set_enable(dev, pos, 1);
 dev->msi_enabled = 1;

 dev->irq = entry->irq;
 return 0;
}
