
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; struct vm_area_struct* vm_next; } ;
struct TYPE_2__ {int mm; } ;


 unsigned long ENOMEM ;
 unsigned long PAGE_ALIGN (unsigned long) ;
 unsigned long TASK_SIZE ;
 TYPE_1__* current ;
 struct vm_area_struct* find_vma (int ,unsigned long) ;

__attribute__((used)) static unsigned long get_unshared_area(unsigned long addr, unsigned long len)
{
 struct vm_area_struct *vma;

 addr = PAGE_ALIGN(addr);

 for (vma = find_vma(current->mm, addr); ; vma = vma->vm_next) {

  if (TASK_SIZE - len < addr)
   return -ENOMEM;
  if (!vma || addr + len <= vma->vm_start)
   return addr;
  addr = vma->vm_end;
 }
}
