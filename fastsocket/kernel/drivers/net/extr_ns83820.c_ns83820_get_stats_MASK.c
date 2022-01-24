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
struct ns83820 {struct net_device_stats stats; int /*<<< orphan*/  misc_lock; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 struct ns83820* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ns83820*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct net_device_stats *FUNC4(struct net_device *ndev)
{
	struct ns83820 *dev = FUNC0(ndev);

	/* somewhat overkill */
	FUNC2(&dev->misc_lock);
	FUNC1(dev);
	FUNC3(&dev->misc_lock);

	return &dev->stats;
}