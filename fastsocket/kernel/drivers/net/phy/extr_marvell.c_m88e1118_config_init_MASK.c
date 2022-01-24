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

/* Variables and functions */
 int BMCR_RESET ; 
 int MII_BMCR ; 
 int FUNC0 (struct phy_device*,int,int) ; 

__attribute__((used)) static int FUNC1(struct phy_device *phydev)
{
	int err;

	/* Change address */
	err = FUNC0(phydev, 0x16, 0x0002);
	if (err < 0)
		return err;

	/* Enable 1000 Mbit */
	err = FUNC0(phydev, 0x15, 0x1070);
	if (err < 0)
		return err;

	/* Change address */
	err = FUNC0(phydev, 0x16, 0x0003);
	if (err < 0)
		return err;

	/* Adjust LED Control */
	err = FUNC0(phydev, 0x10, 0x021e);
	if (err < 0)
		return err;

	/* Reset address */
	err = FUNC0(phydev, 0x16, 0x0);
	if (err < 0)
		return err;

	err = FUNC0(phydev, MII_BMCR, BMCR_RESET);
	if (err < 0)
		return err;

	return 0;
}