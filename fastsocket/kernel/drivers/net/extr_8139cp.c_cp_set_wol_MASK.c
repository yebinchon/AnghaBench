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
struct ethtool_wolinfo {int dummy; } ;
struct cp_private {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 struct cp_private* FUNC0 (struct net_device*) ; 
 int FUNC1 (struct cp_private*,struct ethtool_wolinfo*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4 (struct net_device *dev, struct ethtool_wolinfo *wol)
{
	struct cp_private *cp = FUNC0(dev);
	unsigned long flags;
	int rc;

	FUNC2 (&cp->lock, flags);
	rc = FUNC1 (cp, wol);
	FUNC3 (&cp->lock, flags);

	return rc;
}