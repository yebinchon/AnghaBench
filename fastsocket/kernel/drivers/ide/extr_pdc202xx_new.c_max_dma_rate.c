
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int device; } ;
__attribute__((used)) static u8 max_dma_rate(struct pci_dev *pdev)
{
 u8 mode;

 switch(pdev->device) {
  case 128:
  case 129:
  case 130:
  case 131:
  case 133:
   mode = 4;
   break;
  case 132:
  case 134:
   mode = 3;
   break;
  default:
   return 0;
 }

 return mode;
}
