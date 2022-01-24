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
struct kvm_pit_state {int dummy; } ;
struct TYPE_4__ {TYPE_2__* vpit; } ;
struct kvm {TYPE_1__ arch; } ;
struct TYPE_6__ {int /*<<< orphan*/  lock; } ;
struct TYPE_5__ {TYPE_3__ pit_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kvm_pit_state*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct kvm *kvm, struct kvm_pit_state *ps)
{
	int r = 0;

	FUNC1(&kvm->arch.vpit->pit_state.lock);
	FUNC0(ps, &kvm->arch.vpit->pit_state, sizeof(struct kvm_pit_state));
	FUNC2(&kvm->arch.vpit->pit_state.lock);
	return r;
}