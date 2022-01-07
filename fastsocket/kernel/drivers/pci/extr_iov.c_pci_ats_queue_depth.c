
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct pci_dev {TYPE_1__* ats; scalar_t__ is_virtfn; } ;
struct TYPE_2__ {int qdep; } ;


 int ENODEV ;
 scalar_t__ PCI_ATS_CAP ;
 int PCI_ATS_CAP_QDEP (int ) ;
 int PCI_ATS_MAX_QDEP ;
 int PCI_EXT_CAP_ID_ATS ;
 int pci_find_ext_capability (struct pci_dev*,int ) ;
 int pci_read_config_word (struct pci_dev*,scalar_t__,int *) ;

int pci_ats_queue_depth(struct pci_dev *dev)
{
 int pos;
 u16 cap;

 if (dev->is_virtfn)
  return 0;

 if (dev->ats)
  return dev->ats->qdep;

 pos = pci_find_ext_capability(dev, PCI_EXT_CAP_ID_ATS);
 if (!pos)
  return -ENODEV;

 pci_read_config_word(dev, pos + PCI_ATS_CAP, &cap);

 return PCI_ATS_CAP_QDEP(cap) ? PCI_ATS_CAP_QDEP(cap) :
           PCI_ATS_MAX_QDEP;
}
