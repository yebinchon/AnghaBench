
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_sriov {int nr_virtfn; int ctrl; scalar_t__ pos; int pgsz; } ;
struct pci_dev {struct pci_sriov* sriov; } ;


 int PCI_IOV_RESOURCES ;
 int PCI_IOV_RESOURCE_END ;
 scalar_t__ PCI_SRIOV_CTRL ;
 int PCI_SRIOV_CTRL_VFE ;
 scalar_t__ PCI_SRIOV_NUM_VF ;
 scalar_t__ PCI_SRIOV_SYS_PGSIZE ;
 int msleep (int) ;
 int pci_read_config_word (struct pci_dev*,scalar_t__,int*) ;
 int pci_update_resource (struct pci_dev*,int) ;
 int pci_write_config_dword (struct pci_dev*,scalar_t__,int ) ;
 int pci_write_config_word (struct pci_dev*,scalar_t__,int) ;

__attribute__((used)) static void sriov_restore_state(struct pci_dev *dev)
{
 int i;
 u16 ctrl;
 struct pci_sriov *iov = dev->sriov;

 pci_read_config_word(dev, iov->pos + PCI_SRIOV_CTRL, &ctrl);
 if (ctrl & PCI_SRIOV_CTRL_VFE)
  return;

 for (i = PCI_IOV_RESOURCES; i <= PCI_IOV_RESOURCE_END; i++)
  pci_update_resource(dev, i);

 pci_write_config_dword(dev, iov->pos + PCI_SRIOV_SYS_PGSIZE, iov->pgsz);
 pci_write_config_word(dev, iov->pos + PCI_SRIOV_NUM_VF, iov->nr_virtfn);
 pci_write_config_word(dev, iov->pos + PCI_SRIOV_CTRL, iov->ctrl);
 if (iov->ctrl & PCI_SRIOV_CTRL_VFE)
  msleep(100);
}
