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
 int BMCR_PDOWN ; 
 int /*<<< orphan*/  LED_CTRL_REG ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int /*<<< orphan*/  NS_EXP_MEM_ADD ; 
 int /*<<< orphan*/  NS_EXP_MEM_CTL ; 
 int /*<<< orphan*/  NS_EXP_MEM_DATA ; 
 int FUNC0 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct phy_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct phy_device *phydev, int mode)
{
	int bmcr = FUNC0(phydev, MII_BMCR);

	FUNC1(phydev, MII_BMCR, (bmcr | BMCR_PDOWN));

	/* Enable 8 bit expended memory read/write (no auto increment) */
	FUNC1(phydev, NS_EXP_MEM_CTL, 0);
	FUNC1(phydev, NS_EXP_MEM_ADD, 0x1C0);
	FUNC1(phydev, NS_EXP_MEM_DATA, 0x0008);
	FUNC1(phydev, MII_BMCR, (bmcr & ~BMCR_PDOWN));
	FUNC1(phydev, LED_CTRL_REG, mode);
	return;
}