
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int upper; int lower; } ;
struct TYPE_13__ {TYPE_2__ val32; int val; } ;
typedef TYPE_3__ u64bit ;
struct TYPE_14__ {int max_cmd_sgentries; int pdev; } ;
typedef TYPE_4__ ctlr_info_t ;
struct TYPE_16__ {TYPE_5__* SG; } ;
struct TYPE_11__ {int upper; int lower; } ;
struct TYPE_15__ {int Len; TYPE_1__ Addr; int Ext; } ;
typedef TYPE_5__ SGDescriptor_struct ;
typedef TYPE_6__ CommandList_struct ;


 int CCISS_SG_CHAIN ;
 int PCI_DMA_TODEVICE ;
 int pci_map_single (int ,TYPE_5__*,int,int ) ;

__attribute__((used)) static void cciss_map_sg_chain_block(ctlr_info_t *h, CommandList_struct *c,
 SGDescriptor_struct *chain_block, int len)
{
 SGDescriptor_struct *chain_sg;
 u64bit temp64;

 chain_sg = &c->SG[h->max_cmd_sgentries - 1];
 chain_sg->Ext = CCISS_SG_CHAIN;
 chain_sg->Len = len;
 temp64.val = pci_map_single(h->pdev, chain_block, len,
    PCI_DMA_TODEVICE);
 chain_sg->Addr.lower = temp64.val32.lower;
 chain_sg->Addr.upper = temp64.val32.upper;
}
