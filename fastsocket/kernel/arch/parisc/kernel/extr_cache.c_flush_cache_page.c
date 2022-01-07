
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {TYPE_1__* vm_mm; } ;
struct TYPE_2__ {int context; } ;


 int BUG_ON (int) ;
 int __flush_cache_page (struct vm_area_struct*,unsigned long) ;
 scalar_t__ likely (int ) ;
 int translation_exists (struct vm_area_struct*,unsigned long,unsigned long) ;

void
flush_cache_page(struct vm_area_struct *vma, unsigned long vmaddr, unsigned long pfn)
{
 BUG_ON(!vma->vm_mm->context);

 if (likely(translation_exists(vma, vmaddr, pfn)))
  __flush_cache_page(vma, vmaddr);

}
