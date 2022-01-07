
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; } ;
struct mm_struct {int dummy; } ;


 struct vm_area_struct* get_gate_vma (struct mm_struct*) ;

int in_gate_area(struct mm_struct *mm, unsigned long addr)
{
 struct vm_area_struct *vma = get_gate_vma(mm);

 if (!vma)
  return 0;

 return (addr >= vma->vm_start) && (addr < vma->vm_end);
}
