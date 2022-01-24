#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct sh_dmae_chan {int /*<<< orphan*/  tasklet; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  CHCR ; 
 int CHCR_TE ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct sh_dmae_chan*) ; 
 int FUNC1 (struct sh_dmae_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *data)
{
	irqreturn_t ret = IRQ_NONE;
	struct sh_dmae_chan *sh_chan = (struct sh_dmae_chan *)data;
	u32 chcr = FUNC1(sh_chan, CHCR);

	if (chcr & CHCR_TE) {
		/* DMA stop */
		FUNC0(sh_chan);

		ret = IRQ_HANDLED;
		FUNC2(&sh_chan->tasklet);
	}

	return ret;
}