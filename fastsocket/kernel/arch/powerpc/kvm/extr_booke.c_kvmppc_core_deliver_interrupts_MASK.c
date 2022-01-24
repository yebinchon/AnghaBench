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
struct TYPE_2__ {unsigned long pending_exceptions; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
 int BITS_PER_BYTE ; 
 unsigned int BOOKE_IRQPRIO_MAX ; 
 unsigned int FUNC0 (unsigned long) ; 
 unsigned int FUNC1 (unsigned long*,int,unsigned int) ; 
 scalar_t__ FUNC2 (struct kvm_vcpu*,unsigned int) ; 

void FUNC3(struct kvm_vcpu *vcpu)
{
	unsigned long *pending = &vcpu->arch.pending_exceptions;
	unsigned int priority;

	priority = FUNC0(*pending);
	while (priority <= BOOKE_IRQPRIO_MAX) {
		if (FUNC2(vcpu, priority))
			break;

		priority = FUNC1(pending,
		                         BITS_PER_BYTE * sizeof(*pending),
		                         priority + 1);
	}
}