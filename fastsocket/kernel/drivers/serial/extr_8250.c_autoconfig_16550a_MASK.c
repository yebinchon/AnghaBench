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
struct TYPE_2__ {int uartclk; int /*<<< orphan*/  type; } ;
struct uart_8250_port {int capabilities; TYPE_1__ port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  PORT_16550A ; 
 int /*<<< orphan*/  PORT_16650 ; 
 int /*<<< orphan*/  PORT_16750 ; 
 int /*<<< orphan*/  PORT_NS16550A ; 
 int /*<<< orphan*/  PORT_XSCALE ; 
 int UART_CAP_AFE ; 
 int UART_CAP_EFR ; 
 int UART_CAP_FIFO ; 
 int UART_CAP_SLEEP ; 
 int UART_CAP_UUE ; 
 int UART_EFR ; 
 int UART_FCR ; 
 unsigned int UART_FCR7_64BYTE ; 
 unsigned int UART_FCR_ENABLE_FIFO ; 
 int UART_IER ; 
 unsigned int UART_IER_UUE ; 
 int UART_IIR ; 
 int UART_LCR ; 
 unsigned int UART_LCR_DLAB ; 
 int UART_MCR ; 
 unsigned char UART_MCR_LOOP ; 
 int UART_NATSEMI ; 
 int /*<<< orphan*/  FUNC1 (struct uart_8250_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_8250_port*) ; 
 unsigned short FUNC3 (struct uart_8250_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_8250_port*,unsigned short) ; 
 unsigned int FUNC5 (struct uart_8250_port*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct uart_8250_port*,int,unsigned int) ; 

__attribute__((used)) static void FUNC7(struct uart_8250_port *up)
{
	unsigned char status1, status2;
	unsigned int iersave;

	up->port.type = PORT_16550A;
	up->capabilities |= UART_CAP_FIFO;

	/*
	 * Check for presence of the EFR when DLAB is set.
	 * Only ST16C650V1 UARTs pass this test.
	 */
	FUNC6(up, UART_LCR, UART_LCR_DLAB);
	if (FUNC5(up, UART_EFR) == 0) {
		FUNC6(up, UART_EFR, 0xA8);
		if (FUNC5(up, UART_EFR) != 0) {
			FUNC0("EFRv1 ");
			up->port.type = PORT_16650;
			up->capabilities |= UART_CAP_EFR | UART_CAP_SLEEP;
		} else {
			FUNC0("Motorola 8xxx DUART ");
		}
		FUNC6(up, UART_EFR, 0);
		return;
	}

	/*
	 * Maybe it requires 0xbf to be written to the LCR.
	 * (other ST16C650V2 UARTs, TI16C752A, etc)
	 */
	FUNC6(up, UART_LCR, 0xBF);
	if (FUNC5(up, UART_EFR) == 0 && !FUNC2(up)) {
		FUNC0("EFRv2 ");
		FUNC1(up);
		return;
	}

	/*
	 * Check for a National Semiconductor SuperIO chip.
	 * Attempt to switch to bank 2, read the value of the LOOP bit
	 * from EXCR1. Switch back to bank 0, change it in MCR. Then
	 * switch back to bank 2, read it from EXCR1 again and check
	 * it's changed. If so, set baud_base in EXCR2 to 921600. -- dwmw2
	 */
	FUNC6(up, UART_LCR, 0);
	status1 = FUNC5(up, UART_MCR);
	FUNC6(up, UART_LCR, 0xE0);
	status2 = FUNC5(up, 0x02); /* EXCR1 */

	if (!((status2 ^ status1) & UART_MCR_LOOP)) {
		FUNC6(up, UART_LCR, 0);
		FUNC6(up, UART_MCR, status1 ^ UART_MCR_LOOP);
		FUNC6(up, UART_LCR, 0xE0);
		status2 = FUNC5(up, 0x02); /* EXCR1 */
		FUNC6(up, UART_LCR, 0);
		FUNC6(up, UART_MCR, status1);

		if ((status2 ^ status1) & UART_MCR_LOOP) {
			unsigned short quot;

			FUNC6(up, UART_LCR, 0xE0);

			quot = FUNC3(up);
			quot <<= 3;

			status1 = FUNC5(up, 0x04); /* EXCR2 */
			status1 &= ~0xB0; /* Disable LOCK, mask out PRESL[01] */
			status1 |= 0x10;  /* 1.625 divisor for baud_base --> 921600 */
			FUNC6(up, 0x04, status1);

			FUNC4(up, quot);

			FUNC6(up, UART_LCR, 0);

			up->port.uartclk = 921600*16;
			up->port.type = PORT_NS16550A;
			up->capabilities |= UART_NATSEMI;
			return;
		}
	}

	/*
	 * No EFR.  Try to detect a TI16750, which only sets bit 5 of
	 * the IIR when 64 byte FIFO mode is enabled when DLAB is set.
	 * Try setting it with and without DLAB set.  Cheap clones
	 * set bit 5 without DLAB set.
	 */
	FUNC6(up, UART_LCR, 0);
	FUNC6(up, UART_FCR, UART_FCR_ENABLE_FIFO | UART_FCR7_64BYTE);
	status1 = FUNC5(up, UART_IIR) >> 5;
	FUNC6(up, UART_FCR, UART_FCR_ENABLE_FIFO);
	FUNC6(up, UART_LCR, UART_LCR_DLAB);
	FUNC6(up, UART_FCR, UART_FCR_ENABLE_FIFO | UART_FCR7_64BYTE);
	status2 = FUNC5(up, UART_IIR) >> 5;
	FUNC6(up, UART_FCR, UART_FCR_ENABLE_FIFO);
	FUNC6(up, UART_LCR, 0);

	FUNC0("iir1=%d iir2=%d ", status1, status2);

	if (status1 == 6 && status2 == 7) {
		up->port.type = PORT_16750;
		up->capabilities |= UART_CAP_AFE | UART_CAP_SLEEP;
		return;
	}

	/*
	 * Try writing and reading the UART_IER_UUE bit (b6).
	 * If it works, this is probably one of the Xscale platform's
	 * internal UARTs.
	 * We're going to explicitly set the UUE bit to 0 before
	 * trying to write and read a 1 just to make sure it's not
	 * already a 1 and maybe locked there before we even start start.
	 */
	iersave = FUNC5(up, UART_IER);
	FUNC6(up, UART_IER, iersave & ~UART_IER_UUE);
	if (!(FUNC5(up, UART_IER) & UART_IER_UUE)) {
		/*
		 * OK it's in a known zero state, try writing and reading
		 * without disturbing the current state of the other bits.
		 */
		FUNC6(up, UART_IER, iersave | UART_IER_UUE);
		if (FUNC5(up, UART_IER) & UART_IER_UUE) {
			/*
			 * It's an Xscale.
			 * We'll leave the UART_IER_UUE bit set to 1 (enabled).
			 */
			FUNC0("Xscale ");
			up->port.type = PORT_XSCALE;
			up->capabilities |= UART_CAP_UUE;
			return;
		}
	} else {
		/*
		 * If we got here we couldn't force the IER_UUE bit to 0.
		 * Log it and continue.
		 */
		FUNC0("Couldn't force IER_UUE to 0 ");
	}
	FUNC6(up, UART_IER, iersave);
}