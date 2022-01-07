
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_struct {int addr; } ;
struct page {int dummy; } ;
typedef int gfp_t ;
typedef unsigned long dma_addr_t ;


 int BUG () ;
 size_t PAGE_ALIGN (size_t) ;
 int PAGE_KERNEL_NOCACHE ;
 scalar_t__ PAGE_SIZE ;
 unsigned long VMALLOC_VMADDR (int ) ;
 int VM_ALLOC ;
 unsigned long __get_free_pages (int ,int) ;
 int free_pages (unsigned long,int) ;
 int frv_cache_invalidate (unsigned long,unsigned long) ;
 int get_order (size_t) ;
 struct vm_struct* get_vm_area (size_t,int ) ;
 scalar_t__ in_interrupt () ;
 int map_page (unsigned long,unsigned long,int ) ;
 int split_page (struct page*,int) ;
 int vfree (void*) ;
 unsigned long virt_to_bus (void*) ;
 struct page* virt_to_page (unsigned long) ;

void *consistent_alloc(gfp_t gfp, size_t size, dma_addr_t *dma_handle)
{
 struct vm_struct *area;
 unsigned long page, va, pa;
 void *ret;
 int order, err, i;

 if (in_interrupt())
  BUG();


 size = PAGE_ALIGN(size);
 order = get_order(size);

 page = __get_free_pages(gfp, order);
 if (!page) {
  BUG();
  return ((void*)0);
 }


 area = get_vm_area(size, VM_ALLOC);
 if (area == 0) {
  free_pages(page, order);
  return ((void*)0);
 }
 va = VMALLOC_VMADDR(area->addr);
 ret = (void *) va;


 *dma_handle = pa = virt_to_bus((void *) page);




 if (order > 0) {
  struct page *rpage = virt_to_page(page);
  split_page(rpage, order);
 }

 err = 0;
 for (i = 0; i < size && err == 0; i += PAGE_SIZE)
  err = map_page(va + i, pa + i, PAGE_KERNEL_NOCACHE);

 if (err) {
  vfree((void *) va);
  return ((void*)0);
 }




 frv_cache_invalidate(va, va + size);

 return ret;
}
