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
struct net_device {int /*<<< orphan*/  irq; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int IRQF_SAMPLE_RANDOM ; 
 int IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  elmc_interrupt ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 

__attribute__((used)) static int FUNC8(struct net_device *dev)
{
	int ret;

	FUNC1();	/* disable interrupts */

	ret = FUNC6(dev->irq, &elmc_interrupt, IRQF_SHARED | IRQF_SAMPLE_RANDOM,
			  dev->name, dev);
	if (ret) {
		FUNC5("%s: couldn't get irq %d\n", dev->name, dev->irq);
		FUNC2();
		return ret;
	}
	FUNC0(dev);
	FUNC3(dev);
	FUNC7(dev);
	FUNC4(dev);
	return 0;		/* most done by init */
}