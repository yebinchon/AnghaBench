
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned long vm_start; } ;
struct mm_struct {unsigned long task_size; } ;


 struct vm_area_struct* find_vma (struct mm_struct*,unsigned long) ;

__attribute__((used)) static int slice_area_is_free(struct mm_struct *mm, unsigned long addr,
         unsigned long len)
{
 struct vm_area_struct *vma;

 if ((mm->task_size - len) < addr)
  return 0;
 vma = find_vma(mm, addr);
 return (!vma || (addr + len) <= vma->vm_start);
}
