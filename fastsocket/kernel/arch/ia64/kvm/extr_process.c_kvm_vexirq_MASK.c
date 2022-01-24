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
typedef  int u64 ;
struct kvm_vcpu {int dummy; } ;
struct kvm_pt_regs {int dummy; } ;

/* Variables and functions */
 int IA64_PSR_RI ; 
 int FUNC0 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,struct kvm_pt_regs*) ; 
 struct kvm_pt_regs* FUNC2 (struct kvm_vcpu*) ; 

void FUNC3(struct kvm_vcpu *vcpu)
{
	u64 vpsr, isr;
	struct kvm_pt_regs *regs;

	regs = FUNC2(vcpu);
	vpsr = FUNC0(vcpu, vpsr);
	isr = vpsr & IA64_PSR_RI;
	FUNC1(0, isr, 0, 12, regs); /*EXT IRQ*/
}