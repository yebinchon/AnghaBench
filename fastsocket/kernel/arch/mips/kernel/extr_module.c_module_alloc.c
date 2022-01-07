
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_struct {int dummy; } ;


 int GFP_KERNEL ;
 int MODULE_END ;
 int MODULE_START ;
 unsigned long PAGE_ALIGN (unsigned long) ;
 int PAGE_KERNEL ;
 int VM_ALLOC ;
 struct vm_struct* __get_vm_area (unsigned long,int ,int ,int ) ;
 void* __vmalloc_area (struct vm_struct*,int ,int ) ;
 void* vmalloc (unsigned long) ;

void *module_alloc(unsigned long size)
{
 if (size == 0)
  return ((void*)0);
 return vmalloc(size);

}
