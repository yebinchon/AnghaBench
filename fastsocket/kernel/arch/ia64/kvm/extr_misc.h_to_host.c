
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long vm_base; } ;
struct kvm {TYPE_1__ arch; } ;


 unsigned long KVM_VM_DATA_BASE ;

__attribute__((used)) static inline void *to_host(struct kvm *kvm, void *addr)
{
 return (void *)((unsigned long)addr - KVM_VM_DATA_BASE
   + kvm->arch.vm_base);
}
