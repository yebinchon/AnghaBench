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
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
typedef  int byte ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int RXGOOD ; 
 int /*<<< orphan*/  R_STS ; 
 int TXBF0 ; 
 int TXBF1 ; 
 int FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  de620_lock ; 
 int FUNC1 (struct net_device*) ; 
 int FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t
FUNC7(int irq_in, void *dev_id)
{
	struct net_device *dev = dev_id;
	byte irq_status;
	int bogus_count = 0;
	int again = 0;

	FUNC5(&de620_lock);

	/* Read the status register (_not_ the status port) */
	irq_status = FUNC0(dev, R_STS);

	FUNC4("de620_interrupt (%2.2X)\n", irq_status);

	if (irq_status & RXGOOD) {
		do {
			again = FUNC1(dev);
			FUNC4("again=%d\n", again);
		}
		while (again && (++bogus_count < 100));
	}

	if(FUNC2(dev) != (TXBF0 | TXBF1))
		FUNC3(dev);

	FUNC6(&de620_lock);
	return IRQ_HANDLED;
}