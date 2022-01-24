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
struct kvm_pt_regs {unsigned long cr_ipsr; } ;

/* Variables and functions */
 unsigned long IA64_PSR_AC ; 
 unsigned long IA64_PSR_BE ; 
 unsigned long IA64_PSR_CPL ; 
 unsigned long IA64_PSR_MFH ; 
 unsigned long IA64_PSR_MFL ; 
 unsigned long IA64_PSR_RI ; 
 unsigned long IA64_PSR_UP ; 
 unsigned long FUNC0 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 struct kvm_pt_regs* FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  vpsr ; 

unsigned long FUNC2(struct kvm_vcpu *vcpu)
{
	unsigned long mask;
	struct kvm_pt_regs *regs = FUNC1(vcpu);

	mask = IA64_PSR_BE | IA64_PSR_UP | IA64_PSR_AC | IA64_PSR_MFL |
		IA64_PSR_MFH | IA64_PSR_CPL | IA64_PSR_RI;
	return (FUNC0(vcpu, vpsr) & ~mask) | (regs->cr_ipsr & mask);
}