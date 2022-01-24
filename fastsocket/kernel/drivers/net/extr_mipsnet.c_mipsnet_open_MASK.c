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
struct net_device {int /*<<< orphan*/  base_addr; int /*<<< orphan*/  name; int /*<<< orphan*/  irq; } ;
struct mipsnet_regs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  MIPSNET_INTCTL_TESTBIT ; 
 int /*<<< orphan*/  interruptControl ; 
 int /*<<< orphan*/  mipsnet_interrupt ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev)
{
	int err;

	err = FUNC4(dev->irq, &mipsnet_interrupt,
			  IRQF_SHARED, dev->name, (void *) dev);
	if (err) {
		FUNC3(dev->base_addr, sizeof(struct mipsnet_regs));
		return err;
	}

	FUNC0(dev);

	/* test interrupt handler */
	FUNC1(MIPSNET_INTCTL_TESTBIT, FUNC2(dev, interruptControl));

	return 0;
}