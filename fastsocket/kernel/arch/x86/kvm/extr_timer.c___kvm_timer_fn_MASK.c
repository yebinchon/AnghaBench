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
typedef  int /*<<< orphan*/  wait_queue_head_t ;
struct kvm_vcpu {int /*<<< orphan*/  requests; int /*<<< orphan*/  wq; } ;
struct kvm_timer {int /*<<< orphan*/  period; int /*<<< orphan*/  timer; TYPE_1__* t_ops; int /*<<< orphan*/  pending; scalar_t__ reinject; } ;
struct TYPE_2__ {scalar_t__ (* is_periodic ) (struct kvm_timer*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  KVM_REQ_PENDING_TIMER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct kvm_timer*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct kvm_vcpu *vcpu, struct kvm_timer *ktimer)
{
	int restart_timer = 0;
	wait_queue_head_t *q = &vcpu->wq;

	/*
	 * There is a race window between reading and incrementing, but we do
	 * not care about potentially loosing timer events in the !reinject
	 * case anyway.
	 */
	if (ktimer->reinject || !FUNC1(&ktimer->pending)) {
		FUNC0(&ktimer->pending);
		/* FIXME: this code should not know anything about vcpus */
		FUNC3(KVM_REQ_PENDING_TIMER, &vcpu->requests);
	}

	if (FUNC5(q))
		FUNC6(q);

	if (ktimer->t_ops->is_periodic(ktimer)) {
		FUNC2(&ktimer->timer, ktimer->period);
		restart_timer = 1;
	}

	return restart_timer;
}