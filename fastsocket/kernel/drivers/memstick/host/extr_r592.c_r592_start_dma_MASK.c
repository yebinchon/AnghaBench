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
typedef  int /*<<< orphan*/  u32 ;
struct r592_device {int /*<<< orphan*/  irq_lock; TYPE_1__* req; } ;
struct TYPE_2__ {int /*<<< orphan*/  sg; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_IRQ_ACK_MASK ; 
 int /*<<< orphan*/  DMA_IRQ_EN_MASK ; 
 int /*<<< orphan*/  R592_FIFO_DMA ; 
 int /*<<< orphan*/  R592_FIFO_DMA_SETTINGS ; 
 int /*<<< orphan*/  R592_FIFO_DMA_SETTINGS_DIR ; 
 int /*<<< orphan*/  R592_FIFO_DMA_SETTINGS_EN ; 
 int /*<<< orphan*/  R592_REG_MSC ; 
 int /*<<< orphan*/  FUNC0 (struct r592_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct r592_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct r592_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct r592_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct r592_device *dev, bool is_write)
{
	unsigned long flags;
	u32 reg;
	FUNC5(&dev->irq_lock, flags);

	/* Ack interrupts (just in case) + enable them */
	FUNC0(dev, R592_REG_MSC, DMA_IRQ_ACK_MASK);
	FUNC2(dev, R592_REG_MSC, DMA_IRQ_EN_MASK);

	/* Set DMA address */
	FUNC3(dev, R592_FIFO_DMA, FUNC4(&dev->req->sg));

	/* Enable the DMA */
	reg = FUNC1(dev, R592_FIFO_DMA_SETTINGS);
	reg |= R592_FIFO_DMA_SETTINGS_EN;

	if (!is_write)
		reg |= R592_FIFO_DMA_SETTINGS_DIR;
	else
		reg &= ~R592_FIFO_DMA_SETTINGS_DIR;
	FUNC3(dev, R592_FIFO_DMA_SETTINGS, reg);

	FUNC6(&dev->irq_lock, flags);
}