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
typedef  int u32 ;
struct TYPE_7__ {int /*<<< orphan*/  func; } ;
struct TYPE_6__ {int reinject; int /*<<< orphan*/  timer; } ;
struct TYPE_8__ {int /*<<< orphan*/  irq_acked; scalar_t__ gsi; } ;
struct kvm_kpit_state {int /*<<< orphan*/  lock; TYPE_2__ pit_timer; TYPE_4__ irq_ack_notifier; struct kvm_pit* pit; int /*<<< orphan*/  inject_lock; } ;
struct kvm_pit {scalar_t__ irq_source_id; int /*<<< orphan*/  dev; int /*<<< orphan*/  speaker_dev; TYPE_3__ mask_notifier; struct kvm_kpit_state pit_state; struct kvm* kvm; int /*<<< orphan*/  expired; int /*<<< orphan*/  wq; } ;
struct TYPE_5__ {struct kvm_pit* vpit; } ;
struct kvm {TYPE_1__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HRTIMER_MODE_ABS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KVM_PIO_BUS ; 
 int KVM_PIT_SPEAKER_DUMMY ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_pit*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm*,scalar_t__) ; 
 int FUNC5 (struct kvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kvm_pit_ack_irq ; 
 int /*<<< orphan*/  FUNC8 (struct kvm_pit*) ; 
 int /*<<< orphan*/  FUNC9 (struct kvm*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (struct kvm*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 scalar_t__ FUNC11 (struct kvm*) ; 
 struct kvm_pit* FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pit_dev_ops ; 
 int /*<<< orphan*/  pit_do_work ; 
 int /*<<< orphan*/  pit_mask_notifer ; 
 int /*<<< orphan*/  speaker_dev_ops ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

struct kvm_pit *FUNC17(struct kvm *kvm, u32 flags)
{
	struct kvm_pit *pit;
	struct kvm_kpit_state *pit_state;
	int ret;

	pit = FUNC12(sizeof(struct kvm_pit), GFP_KERNEL);
	if (!pit)
		return NULL;

	pit->irq_source_id = FUNC11(kvm);
	if (pit->irq_source_id < 0) {
		FUNC3(pit);
		return NULL;
	}

	FUNC13(&pit->pit_state.lock);
	FUNC14(&pit->pit_state.lock);
	FUNC16(&pit->pit_state.inject_lock);

	pit->wq = FUNC1("kvm-pit-wq");
	if (!pit->wq) {
		FUNC3(pit);
		return NULL;
	}
	FUNC0(&pit->expired, pit_do_work);

	kvm->arch.vpit = pit;
	pit->kvm = kvm;

	pit_state = &pit->pit_state;
	pit_state->pit = pit;
	FUNC2(&pit_state->pit_timer.timer,
		     CLOCK_MONOTONIC, HRTIMER_MODE_ABS);
	pit_state->irq_ack_notifier.gsi = 0;
	pit_state->irq_ack_notifier.irq_acked = kvm_pit_ack_irq;
	FUNC9(kvm, &pit_state->irq_ack_notifier);
	pit_state->pit_timer.reinject = true;
	FUNC15(&pit->pit_state.lock);

	FUNC8(pit);

	pit->mask_notifier.func = pit_mask_notifer;
	FUNC10(kvm, 0, &pit->mask_notifier);

	FUNC7(&pit->dev, &pit_dev_ops);
	ret = FUNC5(kvm, KVM_PIO_BUS, &pit->dev);
	if (ret < 0)
		goto fail;

	if (flags & KVM_PIT_SPEAKER_DUMMY) {
		FUNC7(&pit->speaker_dev, &speaker_dev_ops);
		ret = FUNC5(kvm, KVM_PIO_BUS,
						&pit->speaker_dev);
		if (ret < 0)
			goto fail_unregister;
	}

	return pit;

fail_unregister:
	FUNC6(kvm, KVM_PIO_BUS, &pit->dev);

fail:
	if (pit->irq_source_id >= 0)
		FUNC4(kvm, pit->irq_source_id);

	FUNC3(pit);
	return NULL;
}