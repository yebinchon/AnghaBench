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
struct kvm_vcpu {int dummy; } ;
struct kvm_pt_regs {unsigned long cr_ifs; void* cr_iip; } ;

/* Variables and functions */
 unsigned long IA64_PSR_BN ; 
 void* FUNC0 (struct kvm_vcpu*,unsigned long) ; 
 unsigned long iip ; 
 unsigned long ipsr ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 
 struct kvm_pt_regs* FUNC3 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*,unsigned long) ; 

void FUNC5(struct kvm_vcpu *vcpu)
{
	unsigned long ifs, psr;
	struct kvm_pt_regs *regs = FUNC3(vcpu);

	psr = FUNC0(vcpu, ipsr);
	if (psr & IA64_PSR_BN)
		FUNC2(vcpu);
	else
		FUNC1(vcpu);
	FUNC4(vcpu, psr);
	ifs = FUNC0(vcpu, ifs);
	if (ifs >> 63)
		regs->cr_ifs = ifs;
	regs->cr_iip = FUNC0(vcpu, iip);
}