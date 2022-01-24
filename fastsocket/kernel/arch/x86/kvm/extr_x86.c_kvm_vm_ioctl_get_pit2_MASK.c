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
struct kvm_pit_state2 {int /*<<< orphan*/  reserved; int /*<<< orphan*/  flags; int /*<<< orphan*/  channels; } ;
struct TYPE_6__ {TYPE_1__* vpit; } ;
struct kvm {TYPE_3__ arch; } ;
struct TYPE_5__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  flags; int /*<<< orphan*/  channels; } ;
struct TYPE_4__ {TYPE_2__ pit_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct kvm *kvm, struct kvm_pit_state2 *ps)
{
	int r = 0;

	FUNC2(&kvm->arch.vpit->pit_state.lock);
	FUNC0(ps->channels, &kvm->arch.vpit->pit_state.channels,
		sizeof(ps->channels));
	ps->flags = kvm->arch.vpit->pit_state.flags;
	FUNC3(&kvm->arch.vpit->pit_state.lock);
	FUNC1(&ps->reserved, 0, sizeof(ps->reserved));
	return r;
}