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
struct ethtool_cmd {int dummy; } ;
struct ax_device {int /*<<< orphan*/  mii_lock; int /*<<< orphan*/  mii; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct ethtool_cmd*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct ax_device* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev, struct ethtool_cmd *cmd)
{
	struct ax_device *ax = FUNC3(dev);
	unsigned long flags;
	int rc;

	FUNC1(&ax->mii_lock, flags);
	rc = FUNC0(&ax->mii, cmd);
	FUNC2(&ax->mii_lock, flags);

	return rc;
}