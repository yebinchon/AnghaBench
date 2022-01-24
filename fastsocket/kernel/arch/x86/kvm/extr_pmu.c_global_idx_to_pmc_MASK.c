#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct kvm_pmu {int dummy; } ;
struct kvm_pmc {int dummy; } ;

/* Variables and functions */
 scalar_t__ MSR_P6_EVNTSEL0 ; 
 int X86_PMC_IDX_FIXED ; 
 struct kvm_pmc* FUNC0 (struct kvm_pmu*,int) ; 
 struct kvm_pmc* FUNC1 (struct kvm_pmu*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static struct kvm_pmc *FUNC2(struct kvm_pmu *pmu, int idx)
{
	if (idx < X86_PMC_IDX_FIXED)
		return FUNC1(pmu, MSR_P6_EVNTSEL0 + idx, MSR_P6_EVNTSEL0);
	else
		return FUNC0(pmu, idx - X86_PMC_IDX_FIXED);
}