
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct pci_dev {TYPE_1__* ats; int is_virtfn; } ;
struct TYPE_2__ {scalar_t__ pos; scalar_t__ stu; } ;


 int BUG () ;
 scalar_t__ PCI_ATS_CTRL ;
 int PCI_ATS_CTRL_ENABLE ;
 int PCI_ATS_CTRL_STU (scalar_t__) ;
 scalar_t__ PCI_ATS_MIN_STU ;
 int PCI_EXT_CAP_ID_ATS ;
 int pci_ats_enabled (struct pci_dev*) ;
 int pci_find_ext_capability (struct pci_dev*,int ) ;
 int pci_write_config_word (struct pci_dev*,scalar_t__,int ) ;

void pci_restore_ats_state(struct pci_dev *dev)
{
 u16 ctrl;

 if (!pci_ats_enabled(dev))
  return;
 if (!pci_find_ext_capability(dev, PCI_EXT_CAP_ID_ATS))
  BUG();

 ctrl = PCI_ATS_CTRL_ENABLE;
 if (!dev->is_virtfn)
  ctrl |= PCI_ATS_CTRL_STU(dev->ats->stu - PCI_ATS_MIN_STU);

 pci_write_config_word(dev, dev->ats->pos + PCI_ATS_CTRL, ctrl);
}
