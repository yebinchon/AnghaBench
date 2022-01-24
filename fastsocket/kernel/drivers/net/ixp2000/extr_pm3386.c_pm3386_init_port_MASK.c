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
typedef  int u16 ;

/* Variables and functions */
 int FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int) ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

void FUNC6(int port)
{
	int pm = port >> 1;

	/*
	 * Work around ENP2611 bootloader programming MAC address
	 * in reverse.
	 */
	if (FUNC0(port, 0x30a, 0x100) == 0x0000 &&
	    (FUNC0(port, 0x309, 0x100) & 0xff00) == 0x5000) {
		u16 temp[3];

		temp[0] = FUNC0(port, 0x308, 0x100);
		temp[1] = FUNC0(port, 0x309, 0x100);
		temp[2] = FUNC0(port, 0x30a, 0x100);
		FUNC1(port, 0x308, 0x100, FUNC4(temp[2]));
		FUNC1(port, 0x309, 0x100, FUNC4(temp[1]));
		FUNC1(port, 0x30a, 0x100, FUNC4(temp[0]));
	}

	/*
	 * Initialise narrowbanding mode.  See application note 2010486
	 * for more information.  (@@@ We also need to issue a reset
	 * when ROOL or DOOL are detected.)
	 */
	FUNC1(port, 0x708, 0x10, 0xd055);
	FUNC5(500);
	FUNC1(port, 0x708, 0x10, 0x5055);

	/*
	 * SPI-3 ingress block.  Set 64 bytes SPI-3 burst size
	 * towards SPI-3 bridge.
	 */
	FUNC1(port, 0x122, 0x20, 0x0002);

	/*
	 * Enable ingress protocol checking, and soft reset the
	 * SPI-3 ingress block.
	 */
	FUNC3(pm, 0x103, 0x0003);
	while (!(FUNC2(pm, 0x103) & 0x80))
		;

	/*
	 * SPI-3 egress block.  Gather 12288 bytes of the current
	 * packet in the TX fifo before initiating transmit on the
	 * SERDES interface.  (Prevents TX underflows.)
	 */
	FUNC1(port, 0x221, 0x20, 0x0007);

	/*
	 * Enforce odd parity from the SPI-3 bridge, and soft reset
	 * the SPI-3 egress block.
	 */
	FUNC3(pm, 0x203, 0x000d & ~(4 << (port & 1)));
	while ((FUNC2(pm, 0x203) & 0x000c) != 0x000c)
		;

	/*
	 * EGMAC block.  Set this channels to reject long preambles,
	 * not send or transmit PAUSE frames, enable preamble checking,
	 * disable frame length checking, enable FCS appending, enable
	 * TX frame padding.
	 */
	FUNC1(port, 0x302, 0x100, 0x0113);

	/*
	 * Soft reset the EGMAC block.
	 */
	FUNC1(port, 0x301, 0x100, 0x8000);
	FUNC1(port, 0x301, 0x100, 0x0000);

	/*
	 * Auto-sense autonegotiation status.
	 */
	FUNC1(port, 0x306, 0x100, 0x0100);

	/*
	 * Allow reception of jumbo frames.
	 */
	FUNC1(port, 0x310, 0x100, 9018);

	/*
	 * Allow transmission of jumbo frames.
	 */
	FUNC1(port, 0x336, 0x100, 9018);

	/* @@@ Should set 0x337/0x437 (RX forwarding threshold.)  */

	/*
	 * Set autonegotiation parameters to 'no PAUSE, full duplex.'
	 */
	FUNC1(port, 0x31c, 0x100, 0x0020);

	/*
	 * Enable and restart autonegotiation.
	 */
	FUNC1(port, 0x318, 0x100, 0x0003);
	FUNC1(port, 0x318, 0x100, 0x0002);
}