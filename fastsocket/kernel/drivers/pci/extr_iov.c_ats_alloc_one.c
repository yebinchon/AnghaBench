
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {struct pci_ats* ats; } ;
struct pci_ats {int pos; int stu; scalar_t__ qdep; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ PCI_ATS_CAP ;
 scalar_t__ PCI_ATS_CAP_QDEP (int ) ;
 scalar_t__ PCI_ATS_MAX_QDEP ;
 int PCI_EXT_CAP_ID_ATS ;
 struct pci_ats* kzalloc (int,int ) ;
 int pci_find_ext_capability (struct pci_dev*,int ) ;
 int pci_read_config_word (struct pci_dev*,scalar_t__,int *) ;

__attribute__((used)) static int ats_alloc_one(struct pci_dev *dev, int ps)
{
 int pos;
 u16 cap;
 struct pci_ats *ats;

 pos = pci_find_ext_capability(dev, PCI_EXT_CAP_ID_ATS);
 if (!pos)
  return -ENODEV;

 ats = kzalloc(sizeof(*ats), GFP_KERNEL);
 if (!ats)
  return -ENOMEM;

 ats->pos = pos;
 ats->stu = ps;
 pci_read_config_word(dev, pos + PCI_ATS_CAP, &cap);
 ats->qdep = PCI_ATS_CAP_QDEP(cap) ? PCI_ATS_CAP_QDEP(cap) :
         PCI_ATS_MAX_QDEP;
 dev->ats = ats;

 return 0;
}
