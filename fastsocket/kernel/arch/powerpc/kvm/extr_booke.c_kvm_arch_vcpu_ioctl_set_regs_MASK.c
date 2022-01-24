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
struct TYPE_2__ {int /*<<< orphan*/ * gpr; int /*<<< orphan*/  sprg7; int /*<<< orphan*/  sprg6; int /*<<< orphan*/  sprg5; int /*<<< orphan*/  sprg3; int /*<<< orphan*/  sprg2; int /*<<< orphan*/  sprg1; int /*<<< orphan*/  sprg0; int /*<<< orphan*/  srr1; int /*<<< orphan*/  srr0; int /*<<< orphan*/  xer; int /*<<< orphan*/  lr; int /*<<< orphan*/  ctr; int /*<<< orphan*/  cr; int /*<<< orphan*/  pc; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_regs {int /*<<< orphan*/ * gpr; int /*<<< orphan*/  sprg6; int /*<<< orphan*/  sprg5; int /*<<< orphan*/  sprg4; int /*<<< orphan*/  sprg3; int /*<<< orphan*/  sprg2; int /*<<< orphan*/  sprg1; int /*<<< orphan*/  sprg0; int /*<<< orphan*/  srr1; int /*<<< orphan*/  srr0; int /*<<< orphan*/  msr; int /*<<< orphan*/  xer; int /*<<< orphan*/  lr; int /*<<< orphan*/  ctr; int /*<<< orphan*/  cr; int /*<<< orphan*/  pc; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 

int FUNC2(struct kvm_vcpu *vcpu, struct kvm_regs *regs)
{
	int i;

	vcpu->arch.pc = regs->pc;
	vcpu->arch.cr = regs->cr;
	vcpu->arch.ctr = regs->ctr;
	vcpu->arch.lr = regs->lr;
	vcpu->arch.xer = regs->xer;
	FUNC1(vcpu, regs->msr);
	vcpu->arch.srr0 = regs->srr0;
	vcpu->arch.srr1 = regs->srr1;
	vcpu->arch.sprg0 = regs->sprg0;
	vcpu->arch.sprg1 = regs->sprg1;
	vcpu->arch.sprg2 = regs->sprg2;
	vcpu->arch.sprg3 = regs->sprg3;
	vcpu->arch.sprg5 = regs->sprg4;
	vcpu->arch.sprg6 = regs->sprg5;
	vcpu->arch.sprg7 = regs->sprg6;

	for (i = 0; i < FUNC0(vcpu->arch.gpr); i++)
		vcpu->arch.gpr[i] = regs->gpr[i];

	return 0;
}