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
struct w90p910_ether {scalar_t__ reg; struct platform_device* pdev; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 unsigned int DELAY ; 
 unsigned int MDCCR_VAL ; 
 unsigned int PHYBUSY ; 
 scalar_t__ REG_MIID ; 
 scalar_t__ REG_MIIDA ; 
 unsigned int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct w90p910_ether* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev, int phy_id, int reg)
{
	struct w90p910_ether *ether = FUNC3(dev);
	struct platform_device *pdev;
	unsigned int val, i, data;

	pdev = ether->pdev;

	val = (phy_id << 0x08) | reg;
	val |= PHYBUSY | MDCCR_VAL;
	FUNC1(val, ether->reg + REG_MIIDA);

	for (i = 0; i < DELAY; i++) {
		if ((FUNC0(ether->reg + REG_MIIDA) & PHYBUSY) == 0)
			break;
	}

	if (i == DELAY) {
		FUNC2(&pdev->dev, "mdio read timed out\n");
		data = 0xffff;
	} else {
		data = FUNC0(ether->reg + REG_MIID);
	}

	return data;
}