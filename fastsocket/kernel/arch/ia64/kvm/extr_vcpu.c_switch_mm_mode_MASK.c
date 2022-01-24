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
struct TYPE_2__ {int /*<<< orphan*/  mode_flags; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct ia64_psr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GUEST_IN_PHY ; 
#define  SW_NOP 131 
#define  SW_P2V 130 
#define  SW_SELF 129 
#define  SW_V2P 128 
 int FUNC0 (struct ia64_psr,struct ia64_psr) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 

void FUNC3(struct kvm_vcpu *vcpu, struct ia64_psr old_psr,
					struct ia64_psr new_psr)
{
	int act;
	act = FUNC0(old_psr, new_psr);
	switch (act) {
	case SW_V2P:
		/*printk("V -> P mode transition: (0x%lx -> 0x%lx)\n",
		old_psr.val, new_psr.val);*/
		FUNC1(vcpu);
		/*
		 * Set rse to enforced lazy, to prevent active rse
		 *save/restor when guest physical mode.
		 */
		vcpu->arch.mode_flags |= GUEST_IN_PHY;
		break;
	case SW_P2V:
		FUNC2(vcpu);
		/*
		 * recover old mode which is saved when entering
		 * guest physical mode
		 */
		vcpu->arch.mode_flags &= ~GUEST_IN_PHY;
		break;
	case SW_SELF:
		break;
	case SW_NOP:
		break;
	default:
		/* Sanity check */
		break;
	}
	return;
}