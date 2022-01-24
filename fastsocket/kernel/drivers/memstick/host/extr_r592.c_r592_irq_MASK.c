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
typedef  int u16 ;
struct r592_device {int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  dma_done; int /*<<< orphan*/  detect_timer; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  R592_REG_MSC ; 
 int R592_REG_MSC_FIFO_DMA_DONE ; 
 int R592_REG_MSC_FIFO_DMA_ERR ; 
 int R592_REG_MSC_IRQ_INSERT ; 
 int R592_REG_MSC_IRQ_REMOVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 (struct r592_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct r592_device*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct r592_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC10(int irq, void *data)
{
	struct r592_device *dev = (struct r592_device *)data;
	irqreturn_t ret = IRQ_NONE;
	u32 reg;
	u16 irq_enable, irq_status;
	unsigned long flags;
	int error;

	FUNC8(&dev->irq_lock, flags);

	reg = FUNC5(dev, R592_REG_MSC);
	irq_enable = reg >> 16;
	irq_status = reg & 0xFFFF;

	/* Ack the interrupts */
	reg &= ~irq_status;
	FUNC7(dev, R592_REG_MSC, reg);

	/* Get the IRQ status minus bits that aren't enabled */
	irq_status &= (irq_enable);

	/* Due to limitation of memstick core, we don't look at bits that
		indicate that card was removed/inserted and/or present */
	if (irq_status & (R592_REG_MSC_IRQ_INSERT | R592_REG_MSC_IRQ_REMOVE)) {

		bool card_was_added = irq_status & R592_REG_MSC_IRQ_INSERT;
		ret = IRQ_HANDLED;

		FUNC2("IRQ: card %s", card_was_added ? "added" : "removed");

		FUNC3(&dev->detect_timer,
			jiffies + FUNC4(card_was_added ? 500 : 50));
	}

	if (irq_status &
		(R592_REG_MSC_FIFO_DMA_DONE | R592_REG_MSC_FIFO_DMA_ERR)) {
		ret = IRQ_HANDLED;

		if (irq_status & R592_REG_MSC_FIFO_DMA_ERR) {
			FUNC2("IRQ: DMA error");
			error = -EIO;
		} else {
			FUNC1("IRQ: dma done");
			error = 0;
		}

		FUNC6(dev, error);
		FUNC0(&dev->dma_done);
	}

	FUNC9(&dev->irq_lock, flags);
	return ret;
}