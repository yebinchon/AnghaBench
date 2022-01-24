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
struct smsc911x_data {struct phy_device* phy_dev; } ;
struct phy_device {int /*<<< orphan*/  addr; int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 unsigned int BMCR_RESET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 int /*<<< orphan*/  HW ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC6(struct smsc911x_data *pdata)
{
	struct phy_device *phy_dev = pdata->phy_dev;
	unsigned int temp;
	unsigned int i = 100000;

	FUNC0(!phy_dev);
	FUNC0(!phy_dev->bus);

	FUNC1(HW, "Performing PHY BCR Reset");
	FUNC5(phy_dev->bus, phy_dev->addr, MII_BMCR, BMCR_RESET);
	do {
		FUNC3(1);
		temp = FUNC4(phy_dev->bus, phy_dev->addr,
			MII_BMCR);
	} while ((i--) && (temp & BMCR_RESET));

	if (temp & BMCR_RESET) {
		FUNC2(HW, "PHY reset failed to complete.");
		return -EIO;
	}
	/* Extra delay required because the phy may not be completed with
	* its reset when BMCR_RESET is cleared. Specs say 256 uS is
	* enough delay but using 1ms here to be safe */
	FUNC3(1);

	return 0;
}