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
typedef  int /*<<< orphan*/  u32 ;
struct phy_device {scalar_t__ irq; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  phy_interface_t ;

/* Variables and functions */
 int FUNC0 (struct net_device*,struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct phy_device*,void (*) (struct net_device*)) ; 
 int /*<<< orphan*/  FUNC2 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct phy_device*,int /*<<< orphan*/ *) ; 

int FUNC4(struct net_device *dev, struct phy_device *phydev,
		       void (*handler)(struct net_device *), u32 flags,
		       phy_interface_t interface)
{
	int rc;

	rc = FUNC0(dev, phydev, flags, interface);
	if (rc)
		return rc;

	FUNC1(phydev, handler);
	FUNC3(phydev, NULL);
	if (phydev->irq > 0)
		FUNC2(phydev);

	return 0;
}