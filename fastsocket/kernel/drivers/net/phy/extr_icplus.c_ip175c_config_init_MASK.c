#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct phy_device {int addr; int link; int /*<<< orphan*/  attached_dev; int /*<<< orphan*/  duplex; int /*<<< orphan*/  speed; int /*<<< orphan*/  state; TYPE_1__* bus; } ;
struct TYPE_7__ {int (* write ) (TYPE_1__*,int,int,int) ;int (* read ) (TYPE_1__*,int,int) ;} ;

/* Variables and functions */
 int BMCR_RESET ; 
 int /*<<< orphan*/  DUPLEX_FULL ; 
 int MII_BMCR ; 
 int /*<<< orphan*/  PHY_RUNNING ; 
 int /*<<< orphan*/  SPEED_100 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,int,int,int) ; 
 int FUNC3 (TYPE_1__*,int,int) ; 
 int FUNC4 (TYPE_1__*,int,int,int) ; 
 int FUNC5 (TYPE_1__*,int,int,int) ; 
 int FUNC6 (TYPE_1__*,int,int,int) ; 
 int FUNC7 (TYPE_1__*,int,int) ; 

__attribute__((used)) static int FUNC8(struct phy_device *phydev)
{
	int err, i;
	static int full_reset_performed = 0;

	if (full_reset_performed == 0) {

		/* master reset */
		err = phydev->bus->write(phydev->bus, 30, 0, 0x175c);
		if (err < 0)
			return err;

		/* ensure no bus delays overlap reset period */
		err = phydev->bus->read(phydev->bus, 30, 0);

		/* data sheet specifies reset period is 2 msec */
		FUNC0(2);

		/* enable IP175C mode */
		err = phydev->bus->write(phydev->bus, 29, 31, 0x175c);
		if (err < 0)
			return err;

		/* Set MII0 speed and duplex (in PHY mode) */
		err = phydev->bus->write(phydev->bus, 29, 22, 0x420);
		if (err < 0)
			return err;

		/* reset switch ports */
		for (i = 0; i < 5; i++) {
			err = phydev->bus->write(phydev->bus, i,
						 MII_BMCR, BMCR_RESET);
			if (err < 0)
				return err;
		}

		for (i = 0; i < 5; i++)
			err = phydev->bus->read(phydev->bus, i, MII_BMCR);

		FUNC0(2);

		full_reset_performed = 1;
	}

	if (phydev->addr != 4) {
		phydev->state = PHY_RUNNING;
		phydev->speed = SPEED_100;
		phydev->duplex = DUPLEX_FULL;
		phydev->link = 1;
		FUNC1(phydev->attached_dev);
	}

	return 0;
}