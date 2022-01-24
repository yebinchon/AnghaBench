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

/* Variables and functions */
 int MDIO_DATA_READ ; 
 int MDIO_DATA_WRITE0 ; 
 int MDIO_DATA_WRITE1 ; 
 int MDIO_ENB_IN ; 
 int MDIO_SHIFT_CLK ; 
 unsigned int Wn4_PhysicalMgmt ; 
 int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int) ; 
 scalar_t__ mii_preamble_required ; 
 int /*<<< orphan*/  FUNC2 (int,unsigned int) ; 

__attribute__((used)) static int FUNC3(unsigned int ioaddr, int phy_id, int location)
{
	int i;
	int read_cmd = (0xf6 << 10) | (phy_id << 5) | location;
	unsigned int retval = 0;
	unsigned int mdio_addr = ioaddr + Wn4_PhysicalMgmt;

	if (mii_preamble_required)
		FUNC1(ioaddr, 32);

	/* Shift the read command bits out. */
	for (i = 14; i >= 0; i--) {
		int dataval = (read_cmd&(1<<i)) ? MDIO_DATA_WRITE1 : MDIO_DATA_WRITE0;
		FUNC2(dataval, mdio_addr);
		FUNC2(dataval | MDIO_SHIFT_CLK, mdio_addr);
	}
	/* Read the two transition, 16 data, and wire-idle bits. */
	for (i = 19; i > 0; i--) {
		FUNC2(MDIO_ENB_IN, mdio_addr);
		retval = (retval << 1) | ((FUNC0(mdio_addr) & MDIO_DATA_READ) ? 1 : 0);
		FUNC2(MDIO_ENB_IN | MDIO_SHIFT_CLK, mdio_addr);
	}
	return (retval>>1) & 0xffff;
}