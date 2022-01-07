
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int device; } ;







__attribute__((used)) static u8 svwks_csb_check (struct pci_dev *dev)
{
 switch (dev->device) {
  case 131:
  case 130:
  case 129:
  case 128:
   return 1;
  default:
   break;
 }
 return 0;
}
