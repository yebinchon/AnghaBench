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
struct kvm_pit_state2 {int flags; int /*<<< orphan*/  channels; } ;
struct TYPE_7__ {TYPE_2__* vpit; } ;
struct kvm {TYPE_3__ arch; } ;
struct TYPE_8__ {int /*<<< orphan*/  count; } ;
struct TYPE_5__ {int flags; int /*<<< orphan*/  lock; TYPE_4__* channels; } ;
struct TYPE_6__ {TYPE_1__ pit_state; } ;

/* Variables and functions */
 int KVM_PIT_FLAGS_HPET_LEGACY ; 
 int /*<<< orphan*/  FUNC0 (struct kvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__**,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct kvm *kvm, struct kvm_pit_state2 *ps)
{
	int r = 0, start = 0;
	u32 prev_legacy, cur_legacy;
	FUNC2(&kvm->arch.vpit->pit_state.lock);
	prev_legacy = kvm->arch.vpit->pit_state.flags & KVM_PIT_FLAGS_HPET_LEGACY;
	cur_legacy = ps->flags & KVM_PIT_FLAGS_HPET_LEGACY;
	if (!prev_legacy && cur_legacy)
		start = 1;
	FUNC1(&kvm->arch.vpit->pit_state.channels, &ps->channels,
	       sizeof(kvm->arch.vpit->pit_state.channels));
	kvm->arch.vpit->pit_state.flags = ps->flags;
	FUNC0(kvm, 0, kvm->arch.vpit->pit_state.channels[0].count, start);
	FUNC3(&kvm->arch.vpit->pit_state.lock);
	return r;
}