#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_9__ {int /*<<< orphan*/  function; } ;
struct kvm_timer {TYPE_4__ timer; int /*<<< orphan*/  pending; int /*<<< orphan*/  kvm; int /*<<< orphan*/ * t_ops; int /*<<< orphan*/  period; } ;
struct kvm_kpit_state {int is_periodic; int irq_ack; TYPE_3__* pit; struct kvm_timer pit_timer; } ;
struct TYPE_7__ {TYPE_1__* vpit; } ;
struct kvm {TYPE_2__ arch; } ;
typedef  int /*<<< orphan*/  s64 ;
struct TYPE_8__ {int /*<<< orphan*/  kvm; int /*<<< orphan*/  expired; } ;
struct TYPE_6__ {struct kvm_kpit_state pit_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  HRTIMER_MODE_ABS ; 
 int /*<<< orphan*/  KVM_PIT_FREQ ; 
 int /*<<< orphan*/  NSEC_PER_SEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm*) ; 
 int /*<<< orphan*/  kpit_ops ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pit_timer_fn ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct kvm *kvm, u32 val, int is_period)
{
	struct kvm_kpit_state *ps = &kvm->arch.vpit->pit_state;
	struct kvm_timer *pt = &ps->pit_timer;
	s64 interval;

	if (!FUNC4(kvm))
		return;

	interval = FUNC7(val, NSEC_PER_SEC, KVM_PIT_FREQ);

	FUNC8("pit: create pit timer, interval is %llu nsec\n", interval);

	/* TODO The new value only affected after the retriggered */
	FUNC2(&pt->timer);
	FUNC1(&ps->pit->expired);
	pt->period = interval;
	ps->is_periodic = is_period;

	pt->timer.function = pit_timer_fn;
	pt->t_ops = &kpit_ops;
	pt->kvm = ps->pit->kvm;

	FUNC0(&pt->pending, 0);
	ps->irq_ack = 1;

	FUNC3(&pt->timer, FUNC5(FUNC6(), interval),
		      HRTIMER_MODE_ABS);
}