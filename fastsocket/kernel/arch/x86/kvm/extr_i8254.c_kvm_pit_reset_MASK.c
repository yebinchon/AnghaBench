#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  pending; } ;
struct TYPE_4__ {int irq_ack; TYPE_1__ pit_timer; int /*<<< orphan*/  lock; struct kvm_kpit_channel_state* channels; scalar_t__ flags; } ;
struct kvm_pit {TYPE_2__ pit_state; int /*<<< orphan*/  kvm; } ;
struct kvm_kpit_channel_state {int mode; int gate; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

void FUNC4(struct kvm_pit *pit)
{
	int i;
	struct kvm_kpit_channel_state *c;

	FUNC1(&pit->pit_state.lock);
	pit->pit_state.flags = 0;
	for (i = 0; i < 3; i++) {
		c = &pit->pit_state.channels[i];
		c->mode = 0xff;
		c->gate = (i != 2);
		FUNC3(pit->kvm, i, 0);
	}
	FUNC2(&pit->pit_state.lock);

	FUNC0(&pit->pit_state.pit_timer.pending, 0);
	pit->pit_state.irq_ack = 1;
}