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
struct jme_adapter {int /*<<< orphan*/  phy_lock; int /*<<< orphan*/  mii_if; } ;
struct ethtool_cmd {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct ethtool_cmd*) ; 
 struct jme_adapter* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(struct net_device *netdev,
		     struct ethtool_cmd *ecmd)
{
	struct jme_adapter *jme = FUNC1(netdev);
	int rc;

	FUNC2(&jme->phy_lock);
	rc = FUNC0(&(jme->mii_if), ecmd);
	FUNC3(&jme->phy_lock);
	return rc;
}