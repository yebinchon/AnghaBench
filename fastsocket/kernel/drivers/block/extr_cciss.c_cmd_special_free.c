
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


struct TYPE_11__ {int upper; int lower; } ;
struct TYPE_14__ {scalar_t__ val; TYPE_1__ val32; } ;
typedef TYPE_4__ u64bit ;
typedef int u32 ;
typedef int dma_addr_t ;
struct TYPE_15__ {int pdev; } ;
typedef TYPE_5__ ctlr_info_t ;
struct TYPE_13__ {int upper; int lower; } ;
struct TYPE_12__ {TYPE_3__ Addr; } ;
struct TYPE_16__ {scalar_t__ busaddr; struct TYPE_16__* err_info; TYPE_2__ ErrDesc; } ;
typedef int ErrorInfo_struct ;
typedef TYPE_6__ CommandList_struct ;


 scalar_t__ cciss_tag_discard_error_bits (TYPE_5__*,int ) ;
 int pci_free_consistent (int ,int,TYPE_6__*,int ) ;

__attribute__((used)) static void cmd_special_free(ctlr_info_t *h, CommandList_struct *c)
{
 u64bit temp64;

 temp64.val32.lower = c->ErrDesc.Addr.lower;
 temp64.val32.upper = c->ErrDesc.Addr.upper;
 pci_free_consistent(h->pdev, sizeof(ErrorInfo_struct),
       c->err_info, (dma_addr_t) temp64.val);
 pci_free_consistent(h->pdev, sizeof(CommandList_struct),
     c, (dma_addr_t) cciss_tag_discard_error_bits(h, (u32) c->busaddr));
}
