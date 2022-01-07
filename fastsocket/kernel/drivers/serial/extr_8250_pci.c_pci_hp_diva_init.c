
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int subsystem_device; } ;
__attribute__((used)) static int pci_hp_diva_init(struct pci_dev *dev)
{
 int rc = 0;

 switch (dev->subsystem_device) {
 case 129:
 case 134:
 case 132:
 case 135:
  rc = 3;
  break;
 case 128:
  rc = 2;
  break;
 case 131:
  rc = 4;
  break;
 case 130:
 case 133:
  rc = 1;
  break;
 }

 return rc;
}
