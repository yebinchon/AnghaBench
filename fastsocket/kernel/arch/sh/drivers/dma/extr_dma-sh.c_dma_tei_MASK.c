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
struct dma_channel {size_t chan; int /*<<< orphan*/  wait_queue; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 scalar_t__ CHCR ; 
 int CHCR_DE ; 
 int CHCR_IE ; 
 int CHCR_TE ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 scalar_t__* dma_base_addr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *dev_id)
{
	struct dma_channel *chan = dev_id;
	u32 chcr;

	chcr = FUNC0(dma_base_addr[chan->chan] + CHCR);

	if (!(chcr & CHCR_TE))
		return IRQ_NONE;

	chcr &= ~(CHCR_IE | CHCR_DE);
	FUNC1(chcr, (dma_base_addr[chan->chan] + CHCR));

	FUNC2(&chan->wait_queue);

	return IRQ_HANDLED;
}