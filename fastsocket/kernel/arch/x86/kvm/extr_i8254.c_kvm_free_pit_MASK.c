#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_4__* vpit; } ;
struct kvm {TYPE_3__ arch; } ;
struct hrtimer {int dummy; } ;
struct TYPE_5__ {struct hrtimer timer; } ;
struct TYPE_6__ {int /*<<< orphan*/  lock; TYPE_1__ pit_timer; int /*<<< orphan*/  irq_ack_notifier; } ;
struct TYPE_8__ {int /*<<< orphan*/  wq; TYPE_2__ pit_state; int /*<<< orphan*/  irq_source_id; int /*<<< orphan*/  expired; int /*<<< orphan*/  mask_notifier; int /*<<< orphan*/  speaker_dev; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  KVM_PIO_BUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hrtimer*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(struct kvm *kvm)
{
	struct hrtimer *timer;

	if (kvm->arch.vpit) {
		FUNC5(kvm, KVM_PIO_BUS, &kvm->arch.vpit->dev);
		FUNC5(kvm, KVM_PIO_BUS,
					      &kvm->arch.vpit->speaker_dev);
		FUNC7(kvm, 0,
					       &kvm->arch.vpit->mask_notifier);
		FUNC6(kvm,
				&kvm->arch.vpit->pit_state.irq_ack_notifier);
		FUNC8(&kvm->arch.vpit->pit_state.lock);
		timer = &kvm->arch.vpit->pit_state.pit_timer.timer;
		FUNC2(timer);
		FUNC0(&kvm->arch.vpit->expired);
		FUNC4(kvm, kvm->arch.vpit->irq_source_id);
		FUNC9(&kvm->arch.vpit->pit_state.lock);
		FUNC1(kvm->arch.vpit->wq);
		FUNC3(kvm->arch.vpit);
	}
}