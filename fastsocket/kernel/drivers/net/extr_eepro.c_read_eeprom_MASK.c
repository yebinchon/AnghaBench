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
struct net_device {int dummy; } ;
struct eepro_local {int eeprom_reg; } ;

/* Variables and functions */
 short EECS ; 
 short EEDI ; 
 int EEDO ; 
 short EESK ; 
 int EE_READ_CMD ; 
 short STATUS_REG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (short) ; 
 struct eepro_local* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (short,short) ; 

__attribute__((used)) static int
FUNC7(int ioaddr, int location, struct net_device *dev)
{
	int i;
	unsigned short retval = 0;
	struct eepro_local *lp = FUNC5(dev);
	short ee_addr = ioaddr + lp->eeprom_reg;
	int read_cmd = location | EE_READ_CMD;
	short ctrl_val = EECS ;

	/* XXXX - black magic */
		FUNC1(ioaddr);
		FUNC6(0x00, ioaddr + STATUS_REG);
	/* XXXX - black magic */

	FUNC2(ioaddr);
	FUNC6(ctrl_val, ee_addr);

	/* Shift the read command bits out. */
	for (i = 8; i >= 0; i--) {
		short outval = (read_cmd & (1 << i)) ? ctrl_val | EEDI
			: ctrl_val;
		FUNC6(outval, ee_addr);
		FUNC6(outval | EESK, ee_addr);	/* EEPROM clock tick. */
		FUNC3();
		FUNC6(outval, ee_addr);	/* Finish EEPROM a clock tick. */
		FUNC3();
	}
	FUNC6(ctrl_val, ee_addr);

	for (i = 16; i > 0; i--) {
		FUNC6(ctrl_val | EESK, ee_addr);	 FUNC3();
		retval = (retval << 1) | ((FUNC4(ee_addr) & EEDO) ? 1 : 0);
		FUNC6(ctrl_val, ee_addr);  FUNC3();
	}

	/* Terminate the EEPROM access. */
	ctrl_val &= ~EECS;
	FUNC6(ctrl_val | EESK, ee_addr);
	FUNC3();
	FUNC6(ctrl_val, ee_addr);
	FUNC3();
	FUNC0(ioaddr);
	return retval;
}