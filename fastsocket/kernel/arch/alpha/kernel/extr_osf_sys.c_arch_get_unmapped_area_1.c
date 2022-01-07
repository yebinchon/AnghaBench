
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; struct vm_area_struct* vm_next; } ;
struct TYPE_2__ {int mm; } ;


 unsigned long ENOMEM ;
 TYPE_1__* current ;
 struct vm_area_struct* find_vma (int ,unsigned long) ;

__attribute__((used)) static unsigned long
arch_get_unmapped_area_1(unsigned long addr, unsigned long len,
           unsigned long limit)
{
 struct vm_area_struct *vma = find_vma(current->mm, addr);

 while (1) {

  if (limit - len < addr)
   return -ENOMEM;
  if (!vma || addr + len <= vma->vm_start)
   return addr;
  addr = vma->vm_end;
  vma = vma->vm_next;
 }
}
