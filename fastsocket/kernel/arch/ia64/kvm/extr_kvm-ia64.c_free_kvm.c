
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long vm_base; } ;
struct kvm {TYPE_1__ arch; } ;


 int KVM_VM_DATA_SIZE ;
 int free_pages (unsigned long,int ) ;
 int get_order (int ) ;
 int memset (void*,int ,int ) ;

__attribute__((used)) static void free_kvm(struct kvm *kvm)
{
 unsigned long vm_base = kvm->arch.vm_base;

 if (vm_base) {
  memset((void *)vm_base, 0, KVM_VM_DATA_SIZE);
  free_pages(vm_base, get_order(KVM_VM_DATA_SIZE));
 }

}
