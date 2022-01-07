
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int upper; int lower; } ;
union u64bit {int val; TYPE_1__ val32; } ;
struct ctlr_info {int max_cmd_sg_entries; int pdev; } ;
struct TYPE_5__ {int upper; int lower; } ;
struct SGDescriptor {int Len; TYPE_2__ Addr; } ;
struct TYPE_6__ {int SGTotal; } ;
struct CommandList {struct SGDescriptor* SG; TYPE_3__ Header; } ;


 int PCI_DMA_TODEVICE ;
 int pci_unmap_single (int ,int ,int ,int ) ;

__attribute__((used)) static void hpsa_unmap_sg_chain_block(struct ctlr_info *h,
 struct CommandList *c)
{
 struct SGDescriptor *chain_sg;
 union u64bit temp64;

 if (c->Header.SGTotal <= h->max_cmd_sg_entries)
  return;

 chain_sg = &c->SG[h->max_cmd_sg_entries - 1];
 temp64.val32.lower = chain_sg->Addr.lower;
 temp64.val32.upper = chain_sg->Addr.upper;
 pci_unmap_single(h->pdev, temp64.val, chain_sg->Len, PCI_DMA_TODEVICE);
}
