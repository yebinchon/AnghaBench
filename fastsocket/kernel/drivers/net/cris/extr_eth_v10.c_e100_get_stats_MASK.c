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
struct net_local {struct net_device_stats stats; int /*<<< orphan*/  lock; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 struct net_local* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device_stats*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device_stats*) ; 

__attribute__((used)) static struct net_device_stats *
FUNC5(struct net_device *dev)
{
	struct net_local *lp = FUNC0(dev);
	unsigned long flags;

	FUNC1(&lp->lock, flags);

	FUNC3(&lp->stats);
	FUNC4(&lp->stats);

	FUNC2(&lp->lock, flags);
	return &lp->stats;
}