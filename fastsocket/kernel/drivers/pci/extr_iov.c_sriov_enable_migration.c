
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct pci_sriov {int initial; int ctrl; scalar_t__ pos; int mtask; int mstate; } ;
struct pci_dev {struct pci_sriov* sriov; } ;
typedef scalar_t__ resource_size_t ;


 int EIO ;
 int ENOMEM ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ PCI_SRIOV_CTRL ;
 int PCI_SRIOV_CTRL_INTR ;
 int PCI_SRIOV_CTRL_VFM ;
 scalar_t__ PCI_SRIOV_VFM ;
 int PCI_SRIOV_VFM_BIR (scalar_t__) ;
 scalar_t__ PCI_SRIOV_VFM_OFFSET (scalar_t__) ;
 int PCI_STD_RESOURCE_END ;
 int ioremap (scalar_t__,int) ;
 int pci_read_config_dword (struct pci_dev*,scalar_t__,scalar_t__*) ;
 scalar_t__ pci_resource_len (struct pci_dev*,int) ;
 scalar_t__ pci_resource_start (struct pci_dev*,int) ;
 int pci_write_config_word (struct pci_dev*,scalar_t__,int) ;
 int sriov_migration_task ;

__attribute__((used)) static int sriov_enable_migration(struct pci_dev *dev, int nr_virtfn)
{
 int bir;
 u32 table;
 resource_size_t pa;
 struct pci_sriov *iov = dev->sriov;

 if (nr_virtfn <= iov->initial)
  return 0;

 pci_read_config_dword(dev, iov->pos + PCI_SRIOV_VFM, &table);
 bir = PCI_SRIOV_VFM_BIR(table);
 if (bir > PCI_STD_RESOURCE_END)
  return -EIO;

 table = PCI_SRIOV_VFM_OFFSET(table);
 if (table + nr_virtfn > pci_resource_len(dev, bir))
  return -EIO;

 pa = pci_resource_start(dev, bir) + table;
 iov->mstate = ioremap(pa, nr_virtfn);
 if (!iov->mstate)
  return -ENOMEM;

 INIT_WORK(&iov->mtask, sriov_migration_task);

 iov->ctrl |= PCI_SRIOV_CTRL_VFM | PCI_SRIOV_CTRL_INTR;
 pci_write_config_word(dev, iov->pos + PCI_SRIOV_CTRL, iov->ctrl);

 return 0;
}
