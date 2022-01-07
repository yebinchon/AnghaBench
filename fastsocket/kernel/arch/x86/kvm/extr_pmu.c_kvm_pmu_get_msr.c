
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct kvm_pmu {int global_ovf_ctrl; int global_ctrl; int global_status; int fixed_ctr_ctrl; } ;
struct TYPE_2__ {struct kvm_pmu pmu; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_pmc {int eventsel; } ;






 int MSR_IA32_PERFCTR0 ;
 int MSR_P6_EVNTSEL0 ;
 struct kvm_pmc* get_fixed_pmc (struct kvm_pmu*,int) ;
 struct kvm_pmc* get_gp_pmc (struct kvm_pmu*,int,int ) ;
 int read_pmc (struct kvm_pmc*) ;

int kvm_pmu_get_msr(struct kvm_vcpu *vcpu, u32 index, u64 *data)
{
 struct kvm_pmu *pmu = &vcpu->arch.pmu;
 struct kvm_pmc *pmc;

 switch (index) {
 case 131:
  *data = pmu->fixed_ctr_ctrl;
  return 0;
 case 128:
  *data = pmu->global_status;
  return 0;
 case 130:
  *data = pmu->global_ctrl;
  return 0;
 case 129:
  *data = pmu->global_ovf_ctrl;
  return 0;
 default:
  if ((pmc = get_gp_pmc(pmu, index, MSR_IA32_PERFCTR0)) ||
    (pmc = get_fixed_pmc(pmu, index))) {
   *data = read_pmc(pmc);
   return 0;
  } else if ((pmc = get_gp_pmc(pmu, index, MSR_P6_EVNTSEL0))) {
   *data = pmc->eventsel;
   return 0;
  }
 }
 return 1;
}
