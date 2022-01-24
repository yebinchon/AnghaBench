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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int MDIO_CLK ; 
 int MDIO_WRITE0 ; 
 int MDIO_WRITE1 ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int* mii_2_8139_map ; 
 struct netdrv_private* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (int,void*) ; 
 int /*<<< orphan*/  FUNC6 (int,void*) ; 

__attribute__((used)) static void FUNC7 (struct net_device *dev, int phy_id, int location,
			int value)
{
	struct netdrv_private *tp = FUNC3(dev);
	void *mdio_addr = tp->mmio_addr + Config4;
	int mii_cmd =
	    (0x5002 << 16) | (phy_id << 23) | (location << 18) | value;
	int i;

	FUNC0 ("ENTER\n");

	if (phy_id > 31) {	/* Really a 8139.  Use internal registers. */
		if (location < 8 && mii_2_8139_map[location]) {
			FUNC6 (value,
				tp->mmio_addr + mii_2_8139_map[location]);
			FUNC4 (tp->mmio_addr + mii_2_8139_map[location]);
		}
		FUNC0 ("EXIT after directly using 8139 internal regs\n");
		return;
	}
	FUNC2 (mdio_addr);

	/* Shift the command bits out. */
	for (i = 31; i >= 0; i--) {
		int dataval =
		    (mii_cmd & (1 << i)) ? MDIO_WRITE1 : MDIO_WRITE0;
		FUNC5 (dataval, mdio_addr);
		FUNC1 ();
		FUNC5 (dataval | MDIO_CLK, mdio_addr);
		FUNC1 ();
	}

	/* Clear out extra bits. */
	for (i = 2; i > 0; i--) {
		FUNC5 (0, mdio_addr);
		FUNC1 ();
		FUNC5 (MDIO_CLK, mdio_addr);
		FUNC1 ();
	}

	FUNC0 ("EXIT\n");
}