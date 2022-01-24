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
struct fe_priv {int /*<<< orphan*/  phyaddr; } ;

/* Variables and functions */
 int BMSR_LSTATUS ; 
 int /*<<< orphan*/  MII_BMSR ; 
 int /*<<< orphan*/  MII_READ ; 
 int FUNC0 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct fe_priv* FUNC1 (struct net_device*) ; 

__attribute__((used)) static int FUNC2(struct net_device *dev)
{
	struct fe_priv *np = FUNC1(dev);
	int mii_status;

	FUNC0(dev, np->phyaddr, MII_BMSR, MII_READ);
	mii_status = FUNC0(dev, np->phyaddr, MII_BMSR, MII_READ);

	/* check phy link status */
	if (!(mii_status & BMSR_LSTATUS))
		return 0;
	else
		return 1;
}