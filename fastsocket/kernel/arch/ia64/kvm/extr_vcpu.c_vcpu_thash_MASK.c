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
union ia64_rr {int ps; int /*<<< orphan*/  val; } ;
union ia64_pta {int val; unsigned long size; scalar_t__ vf; } ;
typedef  int u64 ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAL_VPS_THASH ; 
 int VRN_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,int) ; 

u64 FUNC3(struct kvm_vcpu *vcpu, u64 vadr)
{
	union ia64_pta vpta;
	union ia64_rr vrr;
	u64 pval;
	u64 vhpt_offset;

	vpta.val = FUNC1(vcpu);
	vrr.val = FUNC2(vcpu, vadr);
	vhpt_offset = ((vadr >> vrr.ps) << 3) & ((1UL << (vpta.size)) - 1);
	if (vpta.vf) {
		pval = FUNC0(PAL_VPS_THASH, vadr, vrr.val,
				vpta.val, 0, 0, 0, 0);
	} else {
		pval = (vadr & VRN_MASK) | vhpt_offset |
			(vpta.val << 3 >> (vpta.size + 3) << (vpta.size));
	}
	return  pval;
}