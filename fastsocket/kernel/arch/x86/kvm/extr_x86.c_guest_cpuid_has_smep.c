
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct kvm_cpuid_entry2 {int ebx; } ;


 int X86_FEATURE_SMEP ;
 int bit (int ) ;
 struct kvm_cpuid_entry2* kvm_find_cpuid_entry (struct kvm_vcpu*,int,int ) ;

__attribute__((used)) static bool guest_cpuid_has_smep(struct kvm_vcpu *vcpu)
{
 struct kvm_cpuid_entry2 *best;

 best = kvm_find_cpuid_entry(vcpu, 7, 0);
 return best && (best->ebx & bit(X86_FEATURE_SMEP));
}
