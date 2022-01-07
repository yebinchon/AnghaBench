
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int ulong ;
struct TYPE_3__ {int cr0_guest_owned_bits; int cr0; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct TYPE_4__ {int (* decache_cr0_guest_bits ) (struct kvm_vcpu*) ;} ;


 TYPE_2__* kvm_x86_ops ;
 int stub1 (struct kvm_vcpu*) ;

__attribute__((used)) static inline ulong kvm_read_cr0_bits(struct kvm_vcpu *vcpu, ulong mask)
{
 if (mask & vcpu->arch.cr0_guest_owned_bits)
  kvm_x86_ops->decache_cr0_guest_bits(vcpu);
 return vcpu->arch.cr0 & mask;
}
