#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net_device {int /*<<< orphan*/  dma; int /*<<< orphan*/  irq; int /*<<< orphan*/  name; } ;
struct TYPE_3__ {scalar_t__ dma_buffer; } ;
typedef  TYPE_1__ elp_device ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BUFFER_SIZE ; 
 int elp_debug ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct net_device *dev)
{
	elp_device *adapter = FUNC5(dev);

	if (elp_debug >= 3)
		FUNC8("%s: request to close device\n", dev->name);

	FUNC6(dev);

	/* Someone may request the device statistic information even when
	 * the interface is closed. The following will update the statistics
	 * structure in the driver, so we'll be able to give current statistics.
	 */
	(void) FUNC0(dev);

	/*
	 * disable interrupts on the board
	 */
	FUNC7(0, dev);

	/*
	 * release the IRQ
	 */
	FUNC2(dev->irq, dev);

	FUNC1(dev->dma);
	FUNC3((unsigned long) adapter->dma_buffer, FUNC4(DMA_BUFFER_SIZE));

	return 0;
}