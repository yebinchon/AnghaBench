
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct kvm_pmu {int version; } ;
struct TYPE_2__ {struct kvm_pmu pmu; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;






 int MSR_IA32_PERFCTR0 ;
 int MSR_P6_EVNTSEL0 ;
 int get_fixed_pmc (struct kvm_pmu*,int) ;
 int get_gp_pmc (struct kvm_pmu*,int,int ) ;

bool kvm_pmu_msr(struct kvm_vcpu *vcpu, u32 msr)
{
 struct kvm_pmu *pmu = &vcpu->arch.pmu;
 int ret;

 switch (msr) {
 case 131:
 case 128:
 case 130:
 case 129:
  ret = pmu->version > 1;
  break;
 default:
  ret = get_gp_pmc(pmu, msr, MSR_IA32_PERFCTR0)
   || get_gp_pmc(pmu, msr, MSR_P6_EVNTSEL0)
   || get_fixed_pmc(pmu, msr);
  break;
 }
 return ret;
}
