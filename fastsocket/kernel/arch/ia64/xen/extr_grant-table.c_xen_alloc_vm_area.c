
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_struct {unsigned long size; unsigned long nr_pages; scalar_t__ phys_addr; int * pages; void* addr; int flags; } ;


 int GFP_KERNEL ;
 int VM_IOREMAP ;
 unsigned long __get_free_pages (int ,int) ;
 int free_pages (unsigned long,int) ;
 int get_order (unsigned long) ;
 struct vm_struct* kmalloc (int,int ) ;
 int scrub_pages (unsigned long,unsigned long) ;

struct vm_struct *xen_alloc_vm_area(unsigned long size)
{
 int order;
 unsigned long virt;
 unsigned long nr_pages;
 struct vm_struct *area;

 order = get_order(size);
 virt = __get_free_pages(GFP_KERNEL, order);
 if (virt == 0)
  goto err0;
 nr_pages = 1 << order;
 scrub_pages(virt, nr_pages);

 area = kmalloc(sizeof(*area), GFP_KERNEL);
 if (area == ((void*)0))
  goto err1;

 area->flags = VM_IOREMAP;
 area->addr = (void *)virt;
 area->size = size;
 area->pages = ((void*)0);
 area->nr_pages = nr_pages;
 area->phys_addr = 0;

 return area;

err1:
 free_pages(virt, order);
err0:
 return ((void*)0);
}
