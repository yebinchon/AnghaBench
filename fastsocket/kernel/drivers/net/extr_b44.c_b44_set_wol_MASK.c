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
struct ethtool_wolinfo {int wolopts; } ;
struct b44 {int /*<<< orphan*/  lock; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  B44_FLAG_WOL_ENABLE ; 
 int WAKE_MAGIC ; 
 struct b44* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev, struct ethtool_wolinfo *wol)
{
	struct b44 *bp = FUNC0(dev);

	FUNC1(&bp->lock);
	if (wol->wolopts & WAKE_MAGIC)
		bp->flags |= B44_FLAG_WOL_ENABLE;
	else
		bp->flags &= ~B44_FLAG_WOL_ENABLE;
	FUNC2(&bp->lock);

	return 0;
}