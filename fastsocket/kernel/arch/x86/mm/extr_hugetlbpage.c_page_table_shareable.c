
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned long vm_pgoff; unsigned long vm_start; unsigned long vm_flags; unsigned long vm_end; } ;
typedef unsigned long pgoff_t ;


 unsigned long PAGE_SHIFT ;
 unsigned long PUD_MASK ;
 unsigned long PUD_SIZE ;
 unsigned long VM_LOCKED ;
 scalar_t__ pmd_index (unsigned long) ;

__attribute__((used)) static unsigned long page_table_shareable(struct vm_area_struct *svma,
    struct vm_area_struct *vma,
    unsigned long addr, pgoff_t idx)
{
 unsigned long saddr = ((idx - svma->vm_pgoff) << PAGE_SHIFT) +
    svma->vm_start;
 unsigned long sbase = saddr & PUD_MASK;
 unsigned long s_end = sbase + PUD_SIZE;


 unsigned long vm_flags = vma->vm_flags & ~VM_LOCKED;
 unsigned long svm_flags = svma->vm_flags & ~VM_LOCKED;





 if (pmd_index(addr) != pmd_index(saddr) ||
     vm_flags != svm_flags ||
     sbase < svma->vm_start || svma->vm_end < s_end)
  return 0;

 return saddr;
}
