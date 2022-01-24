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
struct TYPE_2__ {int tcr; unsigned long dec; int /*<<< orphan*/  dec_timer; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
 int TCR_DIE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 unsigned long tb_ticks_per_jiffy ; 

void FUNC3(struct kvm_vcpu *vcpu)
{
	if (vcpu->arch.tcr & TCR_DIE) {
		/* The decrementer ticks at the same rate as the timebase, so
		 * that's how we convert the guest DEC value to the number of
		 * host ticks. */
		unsigned long nr_jiffies;

		nr_jiffies = vcpu->arch.dec / tb_ticks_per_jiffy;
		FUNC2(&vcpu->arch.dec_timer,
		          FUNC1() + nr_jiffies);
	} else {
		FUNC0(&vcpu->arch.dec_timer);
	}
}