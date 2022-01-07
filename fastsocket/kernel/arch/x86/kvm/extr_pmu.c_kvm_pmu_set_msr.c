
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct msr_data {int index; int data; int host_initiated; } ;
struct kvm_pmu {int fixed_ctr_ctrl; int global_status; int global_ctrl; int global_ctrl_mask; int global_ovf_ctrl; } ;
struct TYPE_2__ {struct kvm_pmu pmu; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_pmc {int counter; int eventsel; } ;
typedef int s64 ;
typedef int s32 ;






 int MSR_IA32_PERFCTR0 ;
 int MSR_P6_EVNTSEL0 ;
 struct kvm_pmc* get_fixed_pmc (struct kvm_pmu*,int) ;
 struct kvm_pmc* get_gp_pmc (struct kvm_pmu*,int,int ) ;
 int global_ctrl_changed (struct kvm_pmu*,int) ;
 int read_pmc (struct kvm_pmc*) ;
 int reprogram_fixed_counters (struct kvm_pmu*,int) ;
 int reprogram_gp_counter (struct kvm_pmc*,int) ;

int kvm_pmu_set_msr(struct kvm_vcpu *vcpu, struct msr_data *msr_info)
{
 struct kvm_pmu *pmu = &vcpu->arch.pmu;
 struct kvm_pmc *pmc;
 u32 index = msr_info->index;
 u64 data = msr_info->data;

 switch (index) {
 case 131:
  if (pmu->fixed_ctr_ctrl == data)
   return 0;
  if (!(data & 0xfffffffffffff444)) {
   reprogram_fixed_counters(pmu, data);
   return 0;
  }
  break;
 case 128:
  if (msr_info->host_initiated) {
   pmu->global_status = data;
   return 0;
  }
  break;
 case 130:
  if (pmu->global_ctrl == data)
   return 0;
  if (!(data & pmu->global_ctrl_mask)) {
   global_ctrl_changed(pmu, data);
   return 0;
  }
  break;
 case 129:
  if (!(data & (pmu->global_ctrl_mask & ~(3ull<<62)))) {
   if (!msr_info->host_initiated)
    pmu->global_status &= ~data;
   pmu->global_ovf_ctrl = data;
   return 0;
  }
  break;
 default:
  if ((pmc = get_gp_pmc(pmu, index, MSR_IA32_PERFCTR0)) ||
    (pmc = get_fixed_pmc(pmu, index))) {
   if (!msr_info->host_initiated)
    data = (s64)(s32)data;
   pmc->counter += data - read_pmc(pmc);
   return 0;
  } else if ((pmc = get_gp_pmc(pmu, index, MSR_P6_EVNTSEL0))) {
   if (data == pmc->eventsel)
    return 0;
   if (!(data & 0xffffffff00200000ull)) {
    reprogram_gp_counter(pmc, data);
    return 0;
   }
  }
 }
 return 1;
}
