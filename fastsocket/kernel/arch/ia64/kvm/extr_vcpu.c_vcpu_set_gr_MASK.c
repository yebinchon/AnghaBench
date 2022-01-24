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
typedef  int /*<<< orphan*/  u64 ;
struct kvm_vcpu {int dummy; } ;
struct kvm_pt_regs {int cr_ifs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long,int /*<<< orphan*/ ,int,struct kvm_pt_regs*) ; 
 struct kvm_pt_regs* FUNC1 (struct kvm_vcpu*) ; 

void FUNC2(struct kvm_vcpu *vcpu, unsigned long reg, u64 value, int nat)
{
	struct kvm_pt_regs *regs = FUNC1(vcpu);
	long sof = (regs->cr_ifs) & 0x7f;

	if (!reg)
		return;
	if (reg >= sof + 32)
		return;
	FUNC0(reg, value, nat, regs);	/* FIXME: handle NATs later*/
}