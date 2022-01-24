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
typedef  int u64 ;
typedef  scalar_t__ u32 ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 scalar_t__ MSR_IA32_CR_PAT ; 
 scalar_t__ MSR_MTRRdefType ; 
 scalar_t__ MSR_MTRRfix4K_F8000 ; 
 scalar_t__ MSR_MTRRfix64K_00000 ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static bool FUNC3(struct kvm_vcpu *vcpu, u32 msr, u64 data)
{
	int i;

	if (!FUNC0(msr))
		return false;

	if (msr == MSR_IA32_CR_PAT) {
		for (i = 0; i < 8; i++)
			if (!FUNC2((data >> (i * 8)) & 0xff))
				return false;
		return true;
	} else if (msr == MSR_MTRRdefType) {
		if (data & ~0xcff)
			return false;
		return FUNC1(data & 0xff);
	} else if (msr >= MSR_MTRRfix64K_00000 && msr <= MSR_MTRRfix4K_F8000) {
		for (i = 0; i < 8 ; i++)
			if (!FUNC1((data >> (i * 8)) & 0xff))
				return false;
		return true;
	}

	/* variable MTRRs */
	return FUNC1(data & 0xff);
}