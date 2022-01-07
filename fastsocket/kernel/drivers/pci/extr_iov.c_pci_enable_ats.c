
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct pci_dev {TYPE_2__* ats; scalar_t__ is_virtfn; scalar_t__ is_physfn; TYPE_1__* sriov; struct pci_dev* physfn; } ;
struct TYPE_4__ {int is_enabled; int stu; scalar_t__ pos; int ref_cnt; } ;
struct TYPE_3__ {int lock; } ;


 int BUG_ON (int ) ;
 int EINVAL ;
 scalar_t__ PCI_ATS_CTRL ;
 int PCI_ATS_CTRL_ENABLE ;
 int PCI_ATS_CTRL_STU (int) ;
 int PCI_ATS_MIN_STU ;
 int ats_alloc_one (struct pci_dev*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pci_write_config_word (struct pci_dev*,scalar_t__,int ) ;

int pci_enable_ats(struct pci_dev *dev, int ps)
{
 int rc;
 u16 ctrl;

 BUG_ON(dev->ats && dev->ats->is_enabled);

 if (ps < PCI_ATS_MIN_STU)
  return -EINVAL;

 if (dev->is_physfn || dev->is_virtfn) {
  struct pci_dev *pdev = dev->is_physfn ? dev : dev->physfn;

  mutex_lock(&pdev->sriov->lock);
  if (pdev->ats)
   rc = pdev->ats->stu == ps ? 0 : -EINVAL;
  else
   rc = ats_alloc_one(pdev, ps);

  if (!rc)
   pdev->ats->ref_cnt++;
  mutex_unlock(&pdev->sriov->lock);
  if (rc)
   return rc;
 }

 if (!dev->is_physfn) {
  rc = ats_alloc_one(dev, ps);
  if (rc)
   return rc;
 }

 ctrl = PCI_ATS_CTRL_ENABLE;
 if (!dev->is_virtfn)
  ctrl |= PCI_ATS_CTRL_STU(ps - PCI_ATS_MIN_STU);
 pci_write_config_word(dev, dev->ats->pos + PCI_ATS_CTRL, ctrl);

 dev->ats->is_enabled = 1;

 return 0;
}
