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
typedef  unsigned int uint64_t ;
struct kvm_vcpu {int dummy; } ;
struct kvm_pt_regs {int dummy; } ;

/* Variables and functions */
 unsigned int IA64_PSR_IC ; 
 unsigned int IA64_PSR_RI ; 
 unsigned int FUNC0 (struct kvm_vcpu*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int,struct kvm_pt_regs*) ; 
 struct kvm_pt_regs* FUNC3 (struct kvm_vcpu*) ; 

__attribute__((used)) static void FUNC4(struct kvm_vcpu *vcpu)
{
	unsigned  vpsr;
	uint64_t isr;

	struct kvm_pt_regs *regs = FUNC3(vcpu);

	vpsr = FUNC0(vcpu, vpsr);
	isr = vpsr & IA64_PSR_RI;
	if (!(vpsr & IA64_PSR_IC))
		FUNC1(vcpu, "Trying to inject one IRQ with psr.ic=0\n");
	FUNC2(0, isr, 0, 12, regs); /* EXT IRQ */
}