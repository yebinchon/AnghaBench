
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef void* u32 ;
struct ctlr_info {size_t max_cmd_sg_entries; int pdev; struct SGDescriptor** cmd_sg_list; } ;
struct TYPE_4__ {void* upper; void* lower; } ;
struct SGDescriptor {int Len; TYPE_2__ Addr; int Ext; } ;
struct TYPE_3__ {int SGTotal; } ;
struct CommandList {size_t cmdindex; TYPE_1__ Header; struct SGDescriptor* SG; } ;


 int HPSA_SG_CHAIN ;
 int PCI_DMA_TODEVICE ;
 int pci_map_single (int ,struct SGDescriptor*,int,int ) ;

__attribute__((used)) static void hpsa_map_sg_chain_block(struct ctlr_info *h,
 struct CommandList *c)
{
 struct SGDescriptor *chain_sg, *chain_block;
 u64 temp64;

 chain_sg = &c->SG[h->max_cmd_sg_entries - 1];
 chain_block = h->cmd_sg_list[c->cmdindex];
 chain_sg->Ext = HPSA_SG_CHAIN;
 chain_sg->Len = sizeof(*chain_sg) *
  (c->Header.SGTotal - h->max_cmd_sg_entries);
 temp64 = pci_map_single(h->pdev, chain_block, chain_sg->Len,
    PCI_DMA_TODEVICE);
 chain_sg->Addr.lower = (u32) (temp64 & 0x0FFFFFFFFULL);
 chain_sg->Addr.upper = (u32) ((temp64 >> 32) & 0x0FFFFFFFFULL);
}
