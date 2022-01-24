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
 scalar_t__ MSR_CORE_PERF_FIXED_CTR0 ; 
 struct kvm_pmc* FUNC0 (struct kvm_pmu*,scalar_t__) ; 

__attribute__((used)) static inline struct kvm_pmc *FUNC1(struct kvm_pmu *pmu, int idx)
{
	return FUNC0(pmu, MSR_CORE_PERF_FIXED_CTR0 + idx);
}