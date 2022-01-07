
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_struct {int dummy; } ;


 int GFP_KERNEL ;
 int MODULES_END ;
 unsigned long MODULES_LEN ;
 int MODULES_VADDR ;
 unsigned long PAGE_ALIGN (unsigned long) ;
 int PAGE_KERNEL_EXEC ;
 int VM_ALLOC ;
 int __GFP_HIGHMEM ;
 struct vm_struct* __get_vm_area (unsigned long,int ,int ,int ) ;
 void* __vmalloc_area (struct vm_struct*,int,int ) ;

void *module_alloc(unsigned long size)
{
 struct vm_struct *area;

 if (!size)
  return ((void*)0);
 size = PAGE_ALIGN(size);
 if (size > MODULES_LEN)
  return ((void*)0);

 area = __get_vm_area(size, VM_ALLOC, MODULES_VADDR, MODULES_END);
 if (!area)
  return ((void*)0);

 return __vmalloc_area(area, GFP_KERNEL | __GFP_HIGHMEM,
     PAGE_KERNEL_EXEC);
}
