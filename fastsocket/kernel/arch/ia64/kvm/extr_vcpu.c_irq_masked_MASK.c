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
union ia64_tpr {int mmi; scalar_t__ mic; int /*<<< orphan*/  val; } ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int ExtINT_VECTOR ; 
 int IRQ_MASKED_BY_INSVC ; 
 int IRQ_MASKED_BY_VTPR ; 
 int IRQ_NO_MASKED ; 
 int NMI_VECTOR ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,scalar_t__) ; 
 scalar_t__ FUNC2 (int,int) ; 
 int /*<<< orphan*/  tpr ; 

int FUNC3(struct kvm_vcpu *vcpu, int h_pending, int h_inservice)
{
	union ia64_tpr vtpr;

	vtpr.val = FUNC0(vcpu, tpr);

	if (h_inservice == NMI_VECTOR)
		return IRQ_MASKED_BY_INSVC;

	if (h_pending == NMI_VECTOR) {
		/* Non Maskable Interrupt */
		return IRQ_NO_MASKED;
	}

	if (h_inservice == ExtINT_VECTOR)
		return IRQ_MASKED_BY_INSVC;

	if (h_pending == ExtINT_VECTOR) {
		if (vtpr.mmi) {
			/* mask all external IRQ */
			return IRQ_MASKED_BY_VTPR;
		} else
			return IRQ_NO_MASKED;
	}

	if (FUNC2(h_pending, h_inservice)) {
		if (FUNC1(h_pending, vtpr.mic + (vtpr.mmi << 4)))
			return IRQ_NO_MASKED;
		else
			return IRQ_MASKED_BY_VTPR;
	} else {
		return IRQ_MASKED_BY_INSVC;
	}
}