
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_2__ {scalar_t__ virtual_tsc_khz; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 scalar_t__ __get_cpu_var (int ) ;
 int cpu_tsc_khz ;

u64 vcpu_tsc_khz(struct kvm_vcpu *vcpu)
{
 if (vcpu->arch.virtual_tsc_khz)
  return vcpu->arch.virtual_tsc_khz;
 else
  return __get_cpu_var(cpu_tsc_khz);
}
