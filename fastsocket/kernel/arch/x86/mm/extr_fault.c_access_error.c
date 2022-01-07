
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; } ;


 unsigned long PF_PROT ;
 int VM_EXEC ;
 int VM_READ ;
 int VM_WRITE ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int
access_error(unsigned long error_code, int write, struct vm_area_struct *vma)
{
 if (write) {

  if (unlikely(!(vma->vm_flags & VM_WRITE)))
   return 1;
  return 0;
 }


 if (unlikely(error_code & PF_PROT))
  return 1;


 if (unlikely(!(vma->vm_flags & (VM_READ | VM_EXEC | VM_WRITE))))
  return 1;

 return 0;
}
