#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct kvm_kpit_state {int flags; TYPE_1__* channels; int /*<<< orphan*/  lock; } ;
struct TYPE_5__ {TYPE_3__* vpit; } ;
struct kvm {TYPE_2__ arch; } ;
struct TYPE_6__ {struct kvm_kpit_state pit_state; } ;
struct TYPE_4__ {int count; int mode; int /*<<< orphan*/  count_load_time; } ;

/* Variables and functions */
 int KVM_PIT_FLAGS_HPET_LEGACY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int) ; 

__attribute__((used)) static void FUNC6(struct kvm *kvm, int channel, u32 val)
{
	struct kvm_kpit_state *ps = &kvm->arch.vpit->pit_state;

	FUNC0(!FUNC4(&ps->lock));

	FUNC5("pit: load_count val is %d, channel is %d\n", val, channel);

	/*
	 * The largest possible initial count is 0; this is equivalent
	 * to 216 for binary counting and 104 for BCD counting.
	 */
	if (val == 0)
		val = 0x10000;

	ps->channels[channel].count = val;

	if (channel != 0) {
		ps->channels[channel].count_load_time = FUNC3();
		return;
	}

	/* Two types of timer
	 * mode 1 is one shot, mode 2 is period, otherwise del timer */
	switch (ps->channels[0].mode) {
	case 0:
	case 1:
        /* FIXME: enhance mode 4 precision */
	case 4:
		if (!(ps->flags & KVM_PIT_FLAGS_HPET_LEGACY)) {
			FUNC1(kvm, val, 0);
		}
		break;
	case 2:
	case 3:
		if (!(ps->flags & KVM_PIT_FLAGS_HPET_LEGACY)){
			FUNC1(kvm, val, 1);
		}
		break;
	default:
		FUNC2(kvm->arch.vpit);
	}
}