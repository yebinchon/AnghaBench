
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; unsigned long vm_start; unsigned long vm_end; } ;


 unsigned long PUD_MASK ;
 unsigned long PUD_SIZE ;
 int VM_MAYSHARE ;

__attribute__((used)) static int vma_shareable(struct vm_area_struct *vma, unsigned long addr)
{
 unsigned long base = addr & PUD_MASK;
 unsigned long end = base + PUD_SIZE;




 if (vma->vm_flags & VM_MAYSHARE &&
     vma->vm_start <= base && end <= vma->vm_end)
  return 1;
 return 0;
}
