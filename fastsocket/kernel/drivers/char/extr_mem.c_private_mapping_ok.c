
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; } ;


 int VM_MAYSHARE ;

__attribute__((used)) static inline int private_mapping_ok(struct vm_area_struct *vma)
{
 return vma->vm_flags & VM_MAYSHARE;
}
