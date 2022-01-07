
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kvm_vcpu {int dummy; } ;
struct kvm_cpuid_entry2 {int edx; int ebx; int ecx; int eax; } ;


 struct kvm_cpuid_entry2* kvm_find_cpuid_entry (struct kvm_vcpu*,int ,int ) ;

__attribute__((used)) static bool emulator_get_cpuid(struct kvm_vcpu *vcpu,
          u32 *eax, u32 *ebx, u32 *ecx, u32 *edx)
{
 struct kvm_cpuid_entry2 *cpuid = ((void*)0);

 if (eax && ecx)
  cpuid = kvm_find_cpuid_entry(vcpu, *eax, *ecx);

 if (cpuid) {
  *eax = cpuid->eax;
  *ecx = cpuid->ecx;
  if (ebx)
   *ebx = cpuid->ebx;
  if (edx)
   *edx = cpuid->edx;
  return 1;
 }

 return 0;
}
