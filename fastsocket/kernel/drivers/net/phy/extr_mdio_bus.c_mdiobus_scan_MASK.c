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
struct phy_device {int dummy; } ;
struct mii_bus {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct phy_device*) ; 
 struct phy_device* FUNC1 (struct mii_bus*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct phy_device*) ; 
 int FUNC3 (struct phy_device*) ; 

struct phy_device *FUNC4(struct mii_bus *bus, int addr)
{
	struct phy_device *phydev;
	int err;

	phydev = FUNC1(bus, addr);
	if (FUNC0(phydev) || phydev == NULL)
		return phydev;

	err = FUNC3(phydev);
	if (err) {
		FUNC2(phydev);
		return NULL;
	}

	return phydev;
}