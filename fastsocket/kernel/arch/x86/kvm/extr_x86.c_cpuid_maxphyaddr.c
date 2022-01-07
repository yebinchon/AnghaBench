
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct kvm_cpuid_entry2 {int eax; } ;


 struct kvm_cpuid_entry2* kvm_find_cpuid_entry (struct kvm_vcpu*,int,int ) ;

int cpuid_maxphyaddr(struct kvm_vcpu *vcpu)
{
 struct kvm_cpuid_entry2 *best;

 best = kvm_find_cpuid_entry(vcpu, 0x80000008, 0);
 if (best)
  return best->eax & 0xff;
 return 36;
}
