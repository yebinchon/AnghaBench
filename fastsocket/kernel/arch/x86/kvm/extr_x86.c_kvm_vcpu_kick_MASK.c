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
struct TYPE_2__ {int /*<<< orphan*/  halt_wakeup; } ;
struct kvm_vcpu {int cpu; int /*<<< orphan*/  requests; TYPE_1__ stat; int /*<<< orphan*/  wq; } ;

/* Variables and functions */
 int /*<<< orphan*/  KVM_REQ_KICK ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 () ; 
 unsigned int nr_cpu_ids ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct kvm_vcpu *vcpu)
{
	int me;
	int cpu = vcpu->cpu;

	if (FUNC5(&vcpu->wq)) {
		FUNC6(&vcpu->wq);
		++vcpu->stat.halt_wakeup;
	}

	me = FUNC1();
	if (cpu != me && (unsigned)cpu < nr_cpu_ids && FUNC0(cpu))
		if (!FUNC4(KVM_REQ_KICK, &vcpu->requests))
			FUNC3(cpu);
	FUNC2();
}