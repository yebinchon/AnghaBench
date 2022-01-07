
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int upper; int lower; } ;
union u64bit {TYPE_2__ val32; scalar_t__ val; } ;
typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct ctlr_info {int pdev; } ;
struct TYPE_4__ {int upper; int lower; } ;
struct TYPE_6__ {int Len; TYPE_1__ Addr; } ;
struct CommandList {int cmdindex; struct ctlr_info* h; TYPE_3__ ErrDesc; scalar_t__ busaddr; int list; struct CommandList* err_info; } ;
typedef scalar_t__ dma_addr_t ;


 int INIT_LIST_HEAD (int *) ;
 int memset (struct CommandList*,int ,int) ;
 void* pci_alloc_consistent (int ,int,scalar_t__*) ;
 int pci_free_consistent (int ,int,struct CommandList*,scalar_t__) ;

__attribute__((used)) static struct CommandList *cmd_special_alloc(struct ctlr_info *h)
{
 struct CommandList *c;
 union u64bit temp64;
 dma_addr_t cmd_dma_handle, err_dma_handle;

 c = pci_alloc_consistent(h->pdev, sizeof(*c), &cmd_dma_handle);
 if (c == ((void*)0))
  return ((void*)0);
 memset(c, 0, sizeof(*c));

 c->cmdindex = -1;

 c->err_info = pci_alloc_consistent(h->pdev, sizeof(*c->err_info),
      &err_dma_handle);

 if (c->err_info == ((void*)0)) {
  pci_free_consistent(h->pdev,
   sizeof(*c), c, cmd_dma_handle);
  return ((void*)0);
 }
 memset(c->err_info, 0, sizeof(*c->err_info));

 INIT_LIST_HEAD(&c->list);
 c->busaddr = (u32) cmd_dma_handle;
 temp64.val = (u64) err_dma_handle;
 c->ErrDesc.Addr.lower = temp64.val32.lower;
 c->ErrDesc.Addr.upper = temp64.val32.upper;
 c->ErrDesc.Len = sizeof(*c->err_info);

 c->h = h;
 return c;
}
