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
struct mii_bus {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int MDIO_USERACCESS_DATA ; 
 int MDIO_USERACCESS_GO ; 
 int MDIO_USERACCESS_PHYADR ; 
 int MDIO_USERACCESS_READ ; 
 int MDIO_USERACCESS_REGADR ; 
 int /*<<< orphan*/  MDIO_WAIT_FOR_USER_ACCESS ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct mii_bus *bus, int phy_id, int phy_reg)
{
	unsigned int phy_data = 0;
	unsigned int phy_control;

	/* Wait until mdio is ready for next command */
	MDIO_WAIT_FOR_USER_ACCESS;

	phy_control = (MDIO_USERACCESS_GO |
		       MDIO_USERACCESS_READ |
		       ((phy_reg << 21) & MDIO_USERACCESS_REGADR) |
		       ((phy_id << 16) & MDIO_USERACCESS_PHYADR) |
		       (phy_data & MDIO_USERACCESS_DATA));
	FUNC2(FUNC0(0), phy_control);

	/* Wait until mdio is ready for next command */
	MDIO_WAIT_FOR_USER_ACCESS;

	return FUNC1(FUNC0(0)) & MDIO_USERACCESS_DATA;

}