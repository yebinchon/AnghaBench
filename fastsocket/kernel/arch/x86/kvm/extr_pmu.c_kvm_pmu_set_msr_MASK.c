#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int u32 ;
struct msr_data {int index; int data; int /*<<< orphan*/  host_initiated; } ;
struct kvm_pmu {int fixed_ctr_ctrl; int global_status; int global_ctrl; int global_ctrl_mask; int global_ovf_ctrl; } ;
struct TYPE_2__ {struct kvm_pmu pmu; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_pmc {int counter; int eventsel; } ;
typedef  int s64 ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
#define  MSR_CORE_PERF_FIXED_CTR_CTRL 131 
#define  MSR_CORE_PERF_GLOBAL_CTRL 130 
#define  MSR_CORE_PERF_GLOBAL_OVF_CTRL 129 
#define  MSR_CORE_PERF_GLOBAL_STATUS 128 
 int /*<<< orphan*/  MSR_IA32_PERFCTR0 ; 
 int /*<<< orphan*/  MSR_P6_EVNTSEL0 ; 
 struct kvm_pmc* FUNC0 (struct kvm_pmu*,int) ; 
 struct kvm_pmc* FUNC1 (struct kvm_pmu*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_pmu*,int) ; 
 int FUNC3 (struct kvm_pmc*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_pmu*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_pmc*,int) ; 

int FUNC6(struct kvm_vcpu *vcpu, struct msr_data *msr_info)
{
	struct kvm_pmu *pmu = &vcpu->arch.pmu;
	struct kvm_pmc *pmc;
	u32 index = msr_info->index;
	u64 data = msr_info->data;

	switch (index) {
	case MSR_CORE_PERF_FIXED_CTR_CTRL:
		if (pmu->fixed_ctr_ctrl == data)
			return 0;
		if (!(data & 0xfffffffffffff444)) {
			FUNC4(pmu, data);
			return 0;
		}
		break;
	case MSR_CORE_PERF_GLOBAL_STATUS:
		if (msr_info->host_initiated) {
			pmu->global_status = data;
			return 0;
		}
		break; /* RO MSR */
	case MSR_CORE_PERF_GLOBAL_CTRL:
		if (pmu->global_ctrl == data)
			return 0;
		if (!(data & pmu->global_ctrl_mask)) {
			FUNC2(pmu, data);
			return 0;
		}
		break;
	case MSR_CORE_PERF_GLOBAL_OVF_CTRL:
		if (!(data & (pmu->global_ctrl_mask & ~(3ull<<62)))) {
			if (!msr_info->host_initiated)
				pmu->global_status &= ~data;
			pmu->global_ovf_ctrl = data;
			return 0;
		}
		break;
	default:
		if ((pmc = FUNC1(pmu, index, MSR_IA32_PERFCTR0)) ||
				(pmc = FUNC0(pmu, index))) {
			if (!msr_info->host_initiated)
				data = (s64)(s32)data;
			pmc->counter += data - FUNC3(pmc);
			return 0;
		} else if ((pmc = FUNC1(pmu, index, MSR_P6_EVNTSEL0))) {
			if (data == pmc->eventsel)
				return 0;
			if (!(data & 0xffffffff00200000ull)) {
				FUNC5(pmc, data);
				return 0;
			}
		}
	}
	return 1;
}