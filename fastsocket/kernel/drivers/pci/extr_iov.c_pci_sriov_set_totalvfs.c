
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct pci_dev {TYPE_1__* sriov; int is_physfn; } ;
struct TYPE_2__ {scalar_t__ total; int ctrl; scalar_t__ drvttl; } ;


 int EBUSY ;
 int EINVAL ;
 int PCI_SRIOV_CTRL_VFE ;

int pci_sriov_set_totalvfs(struct pci_dev *dev, u16 numvfs)
{
 if (!dev || !dev->is_physfn || (numvfs > dev->sriov->total))
  return -EINVAL;


 if (dev->sriov->ctrl & PCI_SRIOV_CTRL_VFE)
  return -EBUSY;
 else
  dev->sriov->drvttl = numvfs;

 return 0;
}
