
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_sriov {int ctrl; int mstate; int mtask; scalar_t__ pos; } ;
struct pci_dev {struct pci_sriov* sriov; } ;


 scalar_t__ PCI_SRIOV_CTRL ;
 int PCI_SRIOV_CTRL_INTR ;
 int PCI_SRIOV_CTRL_VFM ;
 int cancel_work_sync (int *) ;
 int iounmap (int ) ;
 int pci_write_config_word (struct pci_dev*,scalar_t__,int) ;

__attribute__((used)) static void sriov_disable_migration(struct pci_dev *dev)
{
 struct pci_sriov *iov = dev->sriov;

 iov->ctrl &= ~(PCI_SRIOV_CTRL_VFM | PCI_SRIOV_CTRL_INTR);
 pci_write_config_word(dev, iov->pos + PCI_SRIOV_CTRL, iov->ctrl);

 cancel_work_sync(&iov->mtask);
 iounmap(iov->mstate);
}
