
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u64 ;
typedef void* u32 ;
typedef scalar_t__ u16 ;
struct pci_dev {int dummy; } ;
struct TYPE_6__ {scalar_t__ SGTotal; scalar_t__ SGList; } ;
struct CommandList {TYPE_3__ Header; TYPE_2__* SG; } ;
struct TYPE_4__ {void* upper; void* lower; } ;
struct TYPE_5__ {size_t Len; TYPE_1__ Addr; } ;


 int PCI_DMA_NONE ;
 scalar_t__ pci_map_single (struct pci_dev*,unsigned char*,size_t,int) ;

__attribute__((used)) static void hpsa_map_one(struct pci_dev *pdev,
  struct CommandList *cp,
  unsigned char *buf,
  size_t buflen,
  int data_direction)
{
 u64 addr64;

 if (buflen == 0 || data_direction == PCI_DMA_NONE) {
  cp->Header.SGList = 0;
  cp->Header.SGTotal = 0;
  return;
 }

 addr64 = (u64) pci_map_single(pdev, buf, buflen, data_direction);
 cp->SG[0].Addr.lower =
   (u32) (addr64 & (u64) 0x00000000FFFFFFFF);
 cp->SG[0].Addr.upper =
   (u32) ((addr64 >> 32) & (u64) 0x00000000FFFFFFFF);
 cp->SG[0].Len = buflen;
 cp->Header.SGList = (u8) 1;
 cp->Header.SGTotal = (u16) 1;
}
