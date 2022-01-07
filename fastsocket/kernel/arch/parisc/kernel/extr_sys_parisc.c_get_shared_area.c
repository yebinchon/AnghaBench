
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {unsigned long vm_start; int vm_end; struct vm_area_struct* vm_next; } ;
struct address_space {int dummy; } ;
struct TYPE_2__ {int mm; } ;


 int DCACHE_ALIGN (int) ;
 unsigned long ENOMEM ;
 unsigned long TASK_SIZE ;
 TYPE_1__* current ;
 struct vm_area_struct* find_vma (int ,unsigned long) ;
 int get_offset (struct address_space*) ;

__attribute__((used)) static unsigned long get_shared_area(struct address_space *mapping,
  unsigned long addr, unsigned long len, unsigned long pgoff)
{
 struct vm_area_struct *vma;
 int offset = mapping ? get_offset(mapping) : 0;

 addr = DCACHE_ALIGN(addr - offset) + offset;

 for (vma = find_vma(current->mm, addr); ; vma = vma->vm_next) {

  if (TASK_SIZE - len < addr)
   return -ENOMEM;
  if (!vma || addr + len <= vma->vm_start)
   return addr;
  addr = DCACHE_ALIGN(vma->vm_end - offset) + offset;
  if (addr < vma->vm_end)
   return -ENOMEM;
 }
}
