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
struct kvm_kpit_channel_state {int mode; int /*<<< orphan*/  count; } ;
struct TYPE_6__ {TYPE_2__* vpit; } ;
struct kvm {TYPE_3__ arch; } ;
typedef  int /*<<< orphan*/  s64 ;
struct TYPE_4__ {int /*<<< orphan*/  lock; struct kvm_kpit_channel_state* channels; } ;
struct TYPE_5__ {TYPE_1__ pit_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  KVM_PIT_FREQ ; 
 int /*<<< orphan*/  NSEC_PER_SEC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm*,struct kvm_kpit_channel_state*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct kvm *kvm, int channel)
{
	struct kvm_kpit_channel_state *c =
		&kvm->arch.vpit->pit_state.channels[channel];
	s64 d, t;
	int out;

	FUNC0(!FUNC4(&kvm->arch.vpit->pit_state.lock));

	t = FUNC1(kvm, c, channel);
	d = FUNC3(t, KVM_PIT_FREQ, NSEC_PER_SEC);

	switch (c->mode) {
	default:
	case 0:
		out = (d >= c->count);
		break;
	case 1:
		out = (d < c->count);
		break;
	case 2:
		out = ((FUNC2(d, c->count) == 0) && (d != 0));
		break;
	case 3:
		out = (FUNC2(d, c->count) < ((c->count + 1) >> 1));
		break;
	case 4:
	case 5:
		out = (d == c->count);
		break;
	}

	return out;
}