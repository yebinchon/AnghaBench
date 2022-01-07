
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {int dummy; } ;
struct kvm {int dummy; } ;
struct TYPE_2__ {struct kvm_vcpu* (* vcpu_create ) (struct kvm*,unsigned int) ;} ;


 TYPE_1__* kvm_x86_ops ;
 struct kvm_vcpu* stub1 (struct kvm*,unsigned int) ;

struct kvm_vcpu *kvm_arch_vcpu_create(struct kvm *kvm,
      unsigned int id)
{
 return kvm_x86_ops->vcpu_create(kvm, id);
}
