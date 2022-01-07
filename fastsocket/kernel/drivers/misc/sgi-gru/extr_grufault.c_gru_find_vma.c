
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {unsigned long vm_start; int * vm_ops; } ;
struct TYPE_2__ {int mm; } ;


 TYPE_1__* current ;
 struct vm_area_struct* find_vma (int ,unsigned long) ;
 int gru_vm_ops ;

struct vm_area_struct *gru_find_vma(unsigned long vaddr)
{
 struct vm_area_struct *vma;

 vma = find_vma(current->mm, vaddr);
 if (vma && vma->vm_start <= vaddr && vma->vm_ops == &gru_vm_ops)
  return vma;
 return ((void*)0);
}
