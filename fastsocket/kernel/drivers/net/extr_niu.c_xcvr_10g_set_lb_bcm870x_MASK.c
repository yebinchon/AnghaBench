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
struct niu_link_config {scalar_t__ loopback_mode; } ;
struct niu {int /*<<< orphan*/  phy_addr; struct niu_link_config link_config; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCM8704_PCS_DEV_ADDR ; 
 int BMCR_LOOPBACK ; 
 scalar_t__ LOOPBACK_MAC ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int FUNC0 (struct niu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct niu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct niu *np)
{
	struct niu_link_config *lp = &np->link_config;
	int err;

	err = FUNC0(np, np->phy_addr, BCM8704_PCS_DEV_ADDR,
			MII_BMCR);
	if (err < 0)
		return err;

	err &= ~BMCR_LOOPBACK;

	if (lp->loopback_mode == LOOPBACK_MAC)
		err |= BMCR_LOOPBACK;

	err = FUNC1(np, np->phy_addr, BCM8704_PCS_DEV_ADDR,
			 MII_BMCR, err);
	if (err)
		return err;

	return 0;
}