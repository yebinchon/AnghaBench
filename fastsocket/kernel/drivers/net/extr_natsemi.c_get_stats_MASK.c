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
struct net_device_stats {int dummy; } ;
struct netdev_private {struct net_device_stats stats; int /*<<< orphan*/  lock; int /*<<< orphan*/  hands_off; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 struct netdev_private* FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct net_device_stats *FUNC5(struct net_device *dev)
{
	struct netdev_private *np = FUNC1(dev);

	/* The chip only need report frame silently dropped. */
	FUNC3(&np->lock);
	if (FUNC2(dev) && !np->hands_off)
		FUNC0(dev);
	FUNC4(&np->lock);

	return &np->stats;
}