
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct pci_dev {scalar_t__ is_physfn; TYPE_2__* sriov; TYPE_1__* ats; struct pci_dev* physfn; scalar_t__ is_virtfn; } ;
struct TYPE_4__ {int lock; } ;
struct TYPE_3__ {int ref_cnt; scalar_t__ is_enabled; scalar_t__ pos; } ;


 int BUG_ON (int) ;
 scalar_t__ PCI_ATS_CTRL ;
 int PCI_ATS_CTRL_ENABLE ;
 int ats_free_one (struct pci_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pci_read_config_word (struct pci_dev*,scalar_t__,int *) ;
 int pci_write_config_word (struct pci_dev*,scalar_t__,int ) ;

void pci_disable_ats(struct pci_dev *dev)
{
 u16 ctrl;

 BUG_ON(!dev->ats || !dev->ats->is_enabled);

 pci_read_config_word(dev, dev->ats->pos + PCI_ATS_CTRL, &ctrl);
 ctrl &= ~PCI_ATS_CTRL_ENABLE;
 pci_write_config_word(dev, dev->ats->pos + PCI_ATS_CTRL, ctrl);

 dev->ats->is_enabled = 0;

 if (dev->is_physfn || dev->is_virtfn) {
  struct pci_dev *pdev = dev->is_physfn ? dev : dev->physfn;

  mutex_lock(&pdev->sriov->lock);
  pdev->ats->ref_cnt--;
  if (!pdev->ats->ref_cnt)
   ats_free_one(pdev);
  mutex_unlock(&pdev->sriov->lock);
 }

 if (!dev->is_physfn)
  ats_free_one(dev);
}
