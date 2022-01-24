#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct ethtool_cmd {scalar_t__ speed; scalar_t__ autoneg; scalar_t__ duplex; } ;
struct TYPE_2__ {scalar_t__ full_duplex; scalar_t__ force_media; } ;
struct jme_adapter {struct ethtool_cmd old_ecmd; int /*<<< orphan*/  flags; int /*<<< orphan*/  phy_lock; TYPE_1__ mii_if; } ;

/* Variables and functions */
 scalar_t__ AUTONEG_ENABLE ; 
 int EINVAL ; 
 int /*<<< orphan*/  JME_FLAG_SSET ; 
 scalar_t__ SPEED_1000 ; 
 int /*<<< orphan*/  FUNC0 (struct jme_adapter*) ; 
 int FUNC1 (TYPE_1__*,struct ethtool_cmd*) ; 
 struct jme_adapter* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct net_device *netdev,
		     struct ethtool_cmd *ecmd)
{
	struct jme_adapter *jme = FUNC2(netdev);
	int rc, fdc = 0;

	if (ecmd->speed == SPEED_1000 && ecmd->autoneg != AUTONEG_ENABLE)
		return -EINVAL;

	if (jme->mii_if.force_media &&
	ecmd->autoneg != AUTONEG_ENABLE &&
	(jme->mii_if.full_duplex != ecmd->duplex))
		fdc = 1;

	FUNC4(&jme->phy_lock);
	rc = FUNC1(&(jme->mii_if), ecmd);
	FUNC5(&jme->phy_lock);

	if (!rc && fdc)
		FUNC0(jme);

	if (!rc) {
		FUNC3(JME_FLAG_SSET, &jme->flags);
		jme->old_ecmd = *ecmd;
	}

	return rc;
}