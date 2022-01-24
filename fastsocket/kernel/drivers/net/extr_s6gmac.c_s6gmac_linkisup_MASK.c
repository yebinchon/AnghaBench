#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int giga; int mbit; int isup; int /*<<< orphan*/  full; } ;
struct s6gmac {TYPE_1__ link; struct phy_device* phydev; } ;
struct phy_device {int speed; int /*<<< orphan*/  duplex; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 struct s6gmac* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct s6gmac*) ; 

__attribute__((used)) static inline void FUNC4(struct net_device *dev, int isup)
{
	struct s6gmac *pd = FUNC0(dev);
	struct phy_device *phydev = pd->phydev;

	pd->link.full = phydev->duplex;
	pd->link.giga = (phydev->speed == 1000);
	if (pd->link.mbit != phydev->speed) {
		pd->link.mbit = phydev->speed;
		FUNC3(pd);
	}
	pd->link.isup = isup;
	if (isup)
		FUNC1(dev);
	FUNC2(phydev);
}