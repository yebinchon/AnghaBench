
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct rx_ring_info {int rbr_table_size; scalar_t__ rbr_index; int * rbr; struct page** rxhash; } ;
struct page {int * mapping; scalar_t__ index; } ;
struct niu {int device; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* unmap_page ) (int ,scalar_t__,int ,int ) ;} ;


 int DMA_FROM_DEVICE ;
 int MAX_RBR_RING_SIZE ;
 int PAGE_SIZE ;
 int __free_page (struct page*) ;
 int cpu_to_le32 (int ) ;
 int stub1 (int ,scalar_t__,int ,int ) ;

__attribute__((used)) static void niu_rbr_free(struct niu *np, struct rx_ring_info *rp)
{
 int i;

 for (i = 0; i < MAX_RBR_RING_SIZE; i++) {
  struct page *page;

  page = rp->rxhash[i];
  while (page) {
   struct page *next = (struct page *) page->mapping;
   u64 base = page->index;

   np->ops->unmap_page(np->device, base, PAGE_SIZE,
         DMA_FROM_DEVICE);
   page->index = 0;
   page->mapping = ((void*)0);

   __free_page(page);

   page = next;
  }
 }

 for (i = 0; i < rp->rbr_table_size; i++)
  rp->rbr[i] = cpu_to_le32(0);
 rp->rbr_index = 0;
}
