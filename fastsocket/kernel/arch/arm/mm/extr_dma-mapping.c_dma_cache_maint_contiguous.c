
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int BUG () ;



 int PageHighMem (struct page*) ;
 void dmac_clean_range (void const*,void const*) ;
 void dmac_flush_range (void const*,void const*) ;
 void dmac_inv_range (void const*,void const*) ;
 void* kmap_high_get (struct page*) ;
 int kunmap_high (struct page*) ;
 void outer_clean_range (unsigned long,unsigned long) ;
 void outer_flush_range (unsigned long,unsigned long) ;
 void outer_inv_range (unsigned long,unsigned long) ;
 void* page_address (struct page*) ;
 unsigned long page_to_phys (struct page*) ;

__attribute__((used)) static void dma_cache_maint_contiguous(struct page *page, unsigned long offset,
           size_t size, int direction)
{
 void *vaddr;
 unsigned long paddr;
 void (*inner_op)(const void *, const void *);
 void (*outer_op)(unsigned long, unsigned long);

 switch (direction) {
 case 129:
  inner_op = dmac_inv_range;
  outer_op = outer_inv_range;
  break;
 case 128:
  inner_op = dmac_clean_range;
  outer_op = outer_clean_range;
  break;
 case 130:
  inner_op = dmac_flush_range;
  outer_op = outer_flush_range;
  break;
 default:
  BUG();
 }

 if (!PageHighMem(page)) {
  vaddr = page_address(page) + offset;
  inner_op(vaddr, vaddr + size);
 } else {
  vaddr = kmap_high_get(page);
  if (vaddr) {
   vaddr += offset;
   inner_op(vaddr, vaddr + size);
   kunmap_high(page);
  }
 }

 paddr = page_to_phys(page) + offset;
 outer_op(paddr, paddr + size);
}
