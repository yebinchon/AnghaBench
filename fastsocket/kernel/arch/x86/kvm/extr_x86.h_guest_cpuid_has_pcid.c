
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct kvm_cpuid_entry2 {int ecx; } ;


 int X86_FEATURE_PCID ;
 int bit (int ) ;
 struct kvm_cpuid_entry2* kvm_find_cpuid_entry (struct kvm_vcpu*,int,int ) ;

__attribute__((used)) static inline bool guest_cpuid_has_pcid(struct kvm_vcpu *vcpu)
{
 struct kvm_cpuid_entry2 *best;

 best = kvm_find_cpuid_entry(vcpu, 1, 0);
 return best && (best->ecx & bit(X86_FEATURE_PCID));
}
