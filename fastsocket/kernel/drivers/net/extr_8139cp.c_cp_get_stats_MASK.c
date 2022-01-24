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
struct net_device {struct net_device_stats stats; } ;
struct cp_private {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cp_private*) ; 
 struct cp_private* FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct net_device_stats *FUNC6(struct net_device *dev)
{
	struct cp_private *cp = FUNC1(dev);
	unsigned long flags;

	/* The chip only need report frame silently dropped. */
	FUNC4(&cp->lock, flags);
 	if (FUNC3(dev) && FUNC2(dev))
 		FUNC0(cp);
	FUNC5(&cp->lock, flags);

	return &dev->stats;
}