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
struct r6040_private {int /*<<< orphan*/  mii_if; int /*<<< orphan*/  lock; } ;
struct net_device {int dummy; } ;
struct ethtool_cmd {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct ethtool_cmd*) ; 
 struct r6040_private* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev, struct ethtool_cmd *cmd)
{
	struct r6040_private *rp = FUNC1(dev);
	int rc;

	FUNC3(&rp->lock);
	rc = FUNC0(&rp->mii_if, cmd);
	FUNC4(&rp->lock);
	FUNC2(&rp->mii_if);

	return rc;
}