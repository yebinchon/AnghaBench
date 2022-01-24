#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  hypercalls; } ;
struct kvm_vcpu {TYPE_1__ stat; } ;
struct TYPE_4__ {scalar_t__ (* get_cpl ) (struct kvm_vcpu*) ;} ;

/* Variables and functions */
 unsigned long KVM_ENOSYS ; 
 unsigned long KVM_EPERM ; 
#define  KVM_HC_MMU_OP 129 
#define  KVM_HC_VAPIC_POLL_IRQ 128 
 int /*<<< orphan*/  VCPU_REGS_RAX ; 
 int /*<<< orphan*/  VCPU_REGS_RBX ; 
 int /*<<< orphan*/  VCPU_REGS_RCX ; 
 int /*<<< orphan*/  VCPU_REGS_RDX ; 
 int /*<<< orphan*/  VCPU_REGS_RSI ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 int FUNC2 (struct kvm_vcpu*,unsigned long,int /*<<< orphan*/ ,unsigned long*) ; 
 unsigned long FUNC3 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*,int /*<<< orphan*/ ,unsigned long) ; 
 TYPE_2__* kvm_x86_ops ; 
 scalar_t__ FUNC5 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long,unsigned long,unsigned long,unsigned long,unsigned long) ; 

int FUNC7(struct kvm_vcpu *vcpu)
{
	unsigned long nr, a0, a1, a2, a3, ret;
	int r = 1;

	nr = FUNC3(vcpu, VCPU_REGS_RAX);
	a0 = FUNC3(vcpu, VCPU_REGS_RBX);
	a1 = FUNC3(vcpu, VCPU_REGS_RCX);
	a2 = FUNC3(vcpu, VCPU_REGS_RDX);
	a3 = FUNC3(vcpu, VCPU_REGS_RSI);

	FUNC6(nr, a0, a1, a2, a3);

	if (!FUNC1(vcpu)) {
		nr &= 0xFFFFFFFF;
		a0 &= 0xFFFFFFFF;
		a1 &= 0xFFFFFFFF;
		a2 &= 0xFFFFFFFF;
		a3 &= 0xFFFFFFFF;
	}

	if (kvm_x86_ops->get_cpl(vcpu) != 0) {
		ret = -KVM_EPERM;
		goto out;
	}

	switch (nr) {
	case KVM_HC_VAPIC_POLL_IRQ:
		ret = 0;
		break;
	case KVM_HC_MMU_OP:
		r = FUNC2(vcpu, a0, FUNC0(vcpu, a1, a2), &ret);
		break;
	default:
		ret = -KVM_ENOSYS;
		break;
	}
out:
	FUNC4(vcpu, VCPU_REGS_RAX, ret);
	++vcpu->stat.hypercalls;
	return r;
}