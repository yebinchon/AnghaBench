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
struct net_device {int /*<<< orphan*/  name; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  tulip_interrupt ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 

__attribute__((used)) static int
FUNC5(struct net_device *dev)
{
	int retval;

	FUNC3 (dev);

	retval = FUNC1(dev->irq, &tulip_interrupt, IRQF_SHARED, dev->name, dev);
	if (retval)
		goto free_ring;

	FUNC4 (dev);

	FUNC0 (dev);

	return 0;

free_ring:
	FUNC2 (dev);
	return retval;
}