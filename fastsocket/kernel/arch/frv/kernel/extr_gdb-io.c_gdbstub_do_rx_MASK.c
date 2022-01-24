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
 int /*<<< orphan*/  LSR ; 
 int /*<<< orphan*/  RX ; 
 int UART_LSR_DR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int* gdbstub_rx_buffer ; 
 unsigned int gdbstub_rx_inp ; 
 unsigned int gdbstub_rx_outp ; 

void FUNC3(void)
{
	unsigned ix, nix;

	ix = gdbstub_rx_inp;

	while (FUNC0(LSR) & UART_LSR_DR) {
		nix = (ix + 2) & 0xfff;
		if (nix == gdbstub_rx_outp)
			break;

		gdbstub_rx_buffer[ix++] = FUNC0(LSR);
		gdbstub_rx_buffer[ix++] = FUNC0(RX);
		ix = nix;
	}

	gdbstub_rx_inp = ix;

	FUNC2(15);
	FUNC1();

}