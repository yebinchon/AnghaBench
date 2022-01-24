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
 int /*<<< orphan*/  MII_BMCR ; 
 int /*<<< orphan*/  MV88E1111_SCR ; 
 int MV88E1111_SCR_125CLK ; 
 int FUNC0 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct phy_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct phy_device *phydev)
{
	int scr;
	int err;

	/* Workaround for the 125 CLK Toggle */
	scr = FUNC0(phydev, MV88E1111_SCR);

	if (scr < 0)
		return scr;

	err = FUNC1(phydev, MV88E1111_SCR, scr & ~(MV88E1111_SCR_125CLK));

	if (err)
		return err;

	err = FUNC1(phydev, MII_BMCR, BMCR_RESET);

	if (err)
		return err;

	scr = FUNC0(phydev, MV88E1111_SCR);

	if (scr < 0)
		return err;

	err = FUNC1(phydev, MV88E1111_SCR, scr | 0x0008);

	return err;
}