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
struct sh_dmae_regs {int dummy; } ;
struct list_head {struct list_head* next; } ;
struct sh_dmae_chan {struct list_head ld_queue; } ;
struct TYPE_2__ {scalar_t__ mark; struct sh_dmae_regs hw; } ;

/* Variables and functions */
 scalar_t__ DESC_COMP ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (struct sh_dmae_chan*) ; 
 int /*<<< orphan*/  FUNC2 (struct sh_dmae_chan*,struct sh_dmae_regs) ; 
 int /*<<< orphan*/  FUNC3 (struct sh_dmae_chan*) ; 
 TYPE_1__* FUNC4 (struct list_head*) ; 

__attribute__((used)) static void FUNC5(struct sh_dmae_chan *sh_chan)
{
	struct list_head *ld_node;
	struct sh_dmae_regs hw;

	/* DMA work check */
	if (FUNC1(sh_chan))
		return;

	/* Find the first un-transfer desciptor */
	for (ld_node = sh_chan->ld_queue.next;
		(ld_node != &sh_chan->ld_queue)
			&& (FUNC4(ld_node)->mark == DESC_COMP);
		ld_node = ld_node->next)
		FUNC0();

	if (ld_node != &sh_chan->ld_queue) {
		/* Get the ld start address from ld_queue */
		hw = FUNC4(ld_node)->hw;
		FUNC2(sh_chan, hw);
		FUNC3(sh_chan);
	}
}