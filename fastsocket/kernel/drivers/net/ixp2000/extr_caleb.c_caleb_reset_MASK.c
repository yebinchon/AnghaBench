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
 int /*<<< orphan*/  CALEB_BURST ; 
 int /*<<< orphan*/  CALEB_INTREN0 ; 
 int /*<<< orphan*/  CALEB_INTREN1 ; 
 int /*<<< orphan*/  CALEB_PHY0RX ; 
 int /*<<< orphan*/  CALEB_PHY0TX ; 
 int /*<<< orphan*/  CALEB_PHY1RX ; 
 int /*<<< orphan*/  CALEB_PHY1TX ; 
 int /*<<< orphan*/  CALEB_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

void FUNC2(void)
{
	/*
	 * Perform a chip reset.
	 */
	FUNC0(CALEB_RESET, 0x02);
	FUNC1(1);

	/*
	 * Enable all interrupt sources.  This is needed to get
	 * meaningful results out of the status bits (register 6
	 * and 7.)
	 */
	FUNC0(CALEB_INTREN0, 0xff);
	FUNC0(CALEB_INTREN1, 0x07);

	/*
	 * Set RX and TX FIFO thresholds to 1.5kb.
	 */
	FUNC0(CALEB_PHY0RX, 0x11);
	FUNC0(CALEB_PHY1RX, 0x11);
	FUNC0(CALEB_PHY0TX, 0x11);
	FUNC0(CALEB_PHY1TX, 0x11);

	/*
	 * Program SPI-3 burst size.
	 */
	FUNC0(CALEB_BURST, 0);	// 64-byte RBUF mpackets
//	caleb_reg_write(CALEB_BURST, 1);	// 128-byte RBUF mpackets
//	caleb_reg_write(CALEB_BURST, 2);	// 256-byte RBUF mpackets
}