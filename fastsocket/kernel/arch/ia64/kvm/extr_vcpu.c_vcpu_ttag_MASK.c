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
union ia64_rr {int /*<<< orphan*/  val; } ;
union ia64_pta {scalar_t__ vf; int /*<<< orphan*/  val; } ;
typedef  int u64 ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAL_VPS_TTAG ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,int) ; 

u64 FUNC3(struct kvm_vcpu *vcpu, u64 vadr)
{
	union ia64_rr vrr;
	union ia64_pta vpta;
	u64 pval;

	vpta.val = FUNC1(vcpu);
	vrr.val = FUNC2(vcpu, vadr);
	if (vpta.vf) {
		pval = FUNC0(PAL_VPS_TTAG, vadr, vrr.val,
						0, 0, 0, 0, 0);
	} else
		pval = 1;

	return  pval;
}