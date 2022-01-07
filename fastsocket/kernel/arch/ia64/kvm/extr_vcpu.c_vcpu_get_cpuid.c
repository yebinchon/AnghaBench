
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 unsigned long ia64_get_cpuid (unsigned long) ;

unsigned long vcpu_get_cpuid(struct kvm_vcpu *vcpu, unsigned long reg)
{

 if (reg > (ia64_get_cpuid(3) & 0xff))
  return 0;
 else
  return ia64_get_cpuid(reg);
}
