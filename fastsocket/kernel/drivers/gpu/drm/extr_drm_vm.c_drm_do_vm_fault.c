
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_fault {int dummy; } ;
struct vm_area_struct {int dummy; } ;


 int VM_FAULT_SIGBUS ;

__attribute__((used)) static int drm_do_vm_fault(struct vm_area_struct *vma, struct vm_fault *vmf)
{
 return VM_FAULT_SIGBUS;
}
