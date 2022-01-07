
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dev_flags; int vendor; struct pci_dev* physfn; scalar_t__ is_virtfn; TYPE_1__* sriov; int is_physfn; } ;
struct TYPE_2__ {scalar_t__ pos; } ;


 int PCI_DEV_FLAGS_ASSIGNED ;
 scalar_t__ PCI_SRIOV_VF_DID ;
 struct pci_dev* pci_get_device (int ,unsigned short,struct pci_dev*) ;
 int pci_read_config_word (struct pci_dev*,scalar_t__,unsigned short*) ;

int pci_vfs_assigned(struct pci_dev *dev)
{
 struct pci_dev *vfdev;
 unsigned int vfs_assigned = 0;
 unsigned short dev_id;


 if (!dev->is_physfn)
  return 0;





 pci_read_config_word(dev, dev->sriov->pos + PCI_SRIOV_VF_DID, &dev_id);


 vfdev = pci_get_device(dev->vendor, dev_id, ((void*)0));
 while (vfdev) {




  if (vfdev->is_virtfn && (vfdev->physfn == dev) &&
      (vfdev->dev_flags & PCI_DEV_FLAGS_ASSIGNED))
   vfs_assigned++;

  vfdev = pci_get_device(dev->vendor, dev_id, vfdev);
 }

 return vfs_assigned;
}
