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
struct netdrv_private {void* mmio_addr; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int Config4 ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int MDIO_CLK ; 
 int MDIO_DATA_IN ; 
 int MDIO_DATA_OUT ; 
 int MDIO_DIR ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int* mii_2_8139_map ; 
 struct netdrv_private* FUNC3 (struct net_device*) ; 
 int FUNC4 (void*) ; 
 int FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (int,void*) ; 

__attribute__((used)) static int FUNC7 (struct net_device *dev, int phy_id, int location)
{
	struct netdrv_private *tp = FUNC3(dev);
	void *mdio_addr = tp->mmio_addr + Config4;
	int mii_cmd = (0xf6 << 10) | (phy_id << 5) | location;
	int retval = 0;
	int i;

	FUNC0 ("ENTER\n");

	if (phy_id > 31) {	/* Really a 8139.  Use internal registers. */
		FUNC0 ("EXIT after directly using 8139 internal regs\n");
		return location < 8 && mii_2_8139_map[location] ?
		    FUNC5 (tp->mmio_addr + mii_2_8139_map[location]) : 0;
	}
	FUNC2 (mdio_addr);
	/* Shift the read command bits out. */
	for (i = 15; i >= 0; i--) {
		int dataval = (mii_cmd & (1 << i)) ? MDIO_DATA_OUT : 0;

		FUNC6 (MDIO_DIR | dataval, mdio_addr);
		FUNC1 ();
		FUNC6 (MDIO_DIR | dataval | MDIO_CLK, mdio_addr);
		FUNC1 ();
	}

	/* Read the two transition, 16 data, and wire-idle bits. */
	for (i = 19; i > 0; i--) {
		FUNC6 (0, mdio_addr);
		FUNC1 ();
		retval =
		    (retval << 1) | ((FUNC4 (mdio_addr) & MDIO_DATA_IN) ? 1
				     : 0);
		FUNC6 (MDIO_CLK, mdio_addr);
		FUNC1 ();
	}

	FUNC0 ("EXIT, returning %d\n", (retval >> 1) & 0xffff);
	return (retval >> 1) & 0xffff;
}