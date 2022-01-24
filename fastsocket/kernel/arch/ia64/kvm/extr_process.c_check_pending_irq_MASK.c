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
typedef  unsigned long u64 ;
struct kvm_vcpu {int dummy; } ;
struct kvm_pt_regs {int dummy; } ;

/* Variables and functions */
 unsigned long IA64_PSR_I ; 
 unsigned long IA64_PSR_RI ; 
 int IRQ_MASKED_BY_INSVC ; 
 int IRQ_NO_MASKED ; 
 int NULL_VECTOR ; 
 long FUNC0 (struct kvm_vcpu*,unsigned long) ; 
 int FUNC1 (struct kvm_vcpu*) ; 
 int FUNC2 (struct kvm_vcpu*) ; 
 int FUNC3 (struct kvm_vcpu*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,int,struct kvm_pt_regs*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*,int) ; 
 struct kvm_pt_regs* FUNC6 (struct kvm_vcpu*) ; 
 unsigned long vhpi ; 

void FUNC7(struct kvm_vcpu *vcpu)
{
	int  mask, h_pending, h_inservice;
	u64 isr;
	unsigned long  vpsr;
	struct kvm_pt_regs *regs = FUNC6(vcpu);

	h_pending = FUNC2(vcpu);
	if (h_pending == NULL_VECTOR) {
		FUNC5(vcpu, NULL_VECTOR);
		return;
	}
	h_inservice = FUNC1(vcpu);

	vpsr = FUNC0(vcpu, vpsr);
	mask = FUNC3(vcpu, h_pending, h_inservice);
	if ((vpsr & IA64_PSR_I) && IRQ_NO_MASKED == mask) {
		isr = vpsr & IA64_PSR_RI;
		FUNC5(vcpu, h_pending);
		FUNC4(0, isr, 0, 12, regs); /* EXT IRQ */
	} else if (mask == IRQ_MASKED_BY_INSVC) {
		if (FUNC0(vcpu, vhpi))
			FUNC5(vcpu, NULL_VECTOR);
	} else {
		/* masked by vpsr.i or vtpr.*/
		FUNC5(vcpu, h_pending);
	}
}