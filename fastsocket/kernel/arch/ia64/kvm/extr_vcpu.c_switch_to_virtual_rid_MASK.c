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
struct TYPE_2__ {int /*<<< orphan*/  metaphysical_saved_rr4; int /*<<< orphan*/  metaphysical_saved_rr0; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
 int VRN0 ; 
 int VRN4 ; 
 int VRN_SHIFT ; 
 unsigned long FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(struct kvm_vcpu *vcpu)
{
	unsigned long psr;

	psr = FUNC0();
	FUNC2(VRN0 << VRN_SHIFT, vcpu->arch.metaphysical_saved_rr0);
	FUNC3();
	FUNC2(VRN4 << VRN_SHIFT, vcpu->arch.metaphysical_saved_rr4);
	FUNC3();
	FUNC1(psr);
	return;
}