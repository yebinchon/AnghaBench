#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int flags; size_t type; int /*<<< orphan*/  lock; int /*<<< orphan*/  fifosize; int /*<<< orphan*/  iotype; } ;
struct uart_sunsu_port {scalar_t__ su_type; void* type_probed; TYPE_1__ port; } ;
struct TYPE_4__ {int /*<<< orphan*/  dfl_xmit_fifo_size; } ;

/* Variables and functions */
 size_t PORT_16450 ; 
 size_t PORT_16550 ; 
 size_t PORT_16550A ; 
 size_t PORT_16650 ; 
 size_t PORT_16650V2 ; 
 size_t PORT_16750 ; 
 size_t PORT_8250 ; 
 void* PORT_RSA ; 
 void* PORT_UNKNOWN ; 
 scalar_t__ SU_PORT_NONE ; 
 int /*<<< orphan*/  UART_EFR ; 
 int /*<<< orphan*/  UART_FCR ; 
 unsigned char UART_FCR7_64BYTE ; 
 unsigned char UART_FCR_CLEAR_RCVR ; 
 unsigned char UART_FCR_CLEAR_XMIT ; 
 unsigned char UART_FCR_ENABLE_FIFO ; 
 int /*<<< orphan*/  UART_IER ; 
 int /*<<< orphan*/  UART_IIR ; 
 int /*<<< orphan*/  UART_LCR ; 
 unsigned char UART_LCR_DLAB ; 
 int /*<<< orphan*/  UART_MCR ; 
 int UART_MCR_LOOP ; 
 int /*<<< orphan*/  UART_MSR ; 
 int /*<<< orphan*/  UART_RSA_FRR ; 
 int /*<<< orphan*/  UART_RX ; 
 int /*<<< orphan*/  UART_SCR ; 
 int UPF_BUGGY_UART ; 
 int UPF_SKIP_TEST ; 
 int /*<<< orphan*/  UPIO_MEM ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (struct uart_sunsu_port*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct uart_sunsu_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_sunsu_port*,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 TYPE_2__* uart_config ; 

__attribute__((used)) static void FUNC6(struct uart_sunsu_port *up)
{
	unsigned char status1, status2, scratch, scratch2, scratch3;
	unsigned char save_lcr, save_mcr;
	unsigned long flags;

	if (up->su_type == SU_PORT_NONE)
		return;

	up->type_probed = PORT_UNKNOWN;
	up->port.iotype = UPIO_MEM;

	FUNC4(&up->port.lock, flags);

	if (!(up->port.flags & UPF_BUGGY_UART)) {
		/*
		 * Do a simple existence test first; if we fail this, there's
		 * no point trying anything else.
		 *
		 * 0x80 is used as a nonsense port to prevent against false
		 * positives due to ISA bus float.  The assumption is that
		 * 0x80 is a non-existent port; which should be safe since
		 * include/asm/io.h also makes this assumption.
		 */
		scratch = FUNC2(up, UART_IER);
		FUNC3(up, UART_IER, 0);
#ifdef __i386__
		outb(0xff, 0x080);
#endif
		scratch2 = FUNC2(up, UART_IER);
		FUNC3(up, UART_IER, 0x0f);
#ifdef __i386__
		outb(0, 0x080);
#endif
		scratch3 = FUNC2(up, UART_IER);
		FUNC3(up, UART_IER, scratch);
		if (scratch2 != 0 || scratch3 != 0x0F)
			goto out;	/* We failed; there's nothing here */
	}

	save_mcr = FUNC1(up, UART_MCR);
	save_lcr = FUNC1(up, UART_LCR);

	/* 
	 * Check to see if a UART is really there.  Certain broken
	 * internal modems based on the Rockwell chipset fail this
	 * test, because they apparently don't implement the loopback
	 * test mode.  So this test is skipped on the COM 1 through
	 * COM 4 ports.  This *should* be safe, since no board
	 * manufacturer would be stupid enough to design a board
	 * that conflicts with COM 1-4 --- we hope!
	 */
	if (!(up->port.flags & UPF_SKIP_TEST)) {
		FUNC3(up, UART_MCR, UART_MCR_LOOP | 0x0A);
		status1 = FUNC2(up, UART_MSR) & 0xF0;
		FUNC3(up, UART_MCR, save_mcr);
		if (status1 != 0x90)
			goto out;	/* We failed loopback test */
	}
	FUNC3(up, UART_LCR, 0xBF);	/* set up for StarTech test */
	FUNC3(up, UART_EFR, 0);		/* EFR is the same as FCR */
	FUNC3(up, UART_LCR, 0);
	FUNC3(up, UART_FCR, UART_FCR_ENABLE_FIFO);
	scratch = FUNC1(up, UART_IIR) >> 6;
	switch (scratch) {
		case 0:
			up->port.type = PORT_16450;
			break;
		case 1:
			up->port.type = PORT_UNKNOWN;
			break;
		case 2:
			up->port.type = PORT_16550;
			break;
		case 3:
			up->port.type = PORT_16550A;
			break;
	}
	if (up->port.type == PORT_16550A) {
		/* Check for Startech UART's */
		FUNC3(up, UART_LCR, UART_LCR_DLAB);
		if (FUNC1(up, UART_EFR) == 0) {
			up->port.type = PORT_16650;
		} else {
			FUNC3(up, UART_LCR, 0xBF);
			if (FUNC1(up, UART_EFR) == 0)
				up->port.type = PORT_16650V2;
		}
	}
	if (up->port.type == PORT_16550A) {
		/* Check for TI 16750 */
		FUNC3(up, UART_LCR, save_lcr | UART_LCR_DLAB);
		FUNC3(up, UART_FCR,
			    UART_FCR_ENABLE_FIFO | UART_FCR7_64BYTE);
		scratch = FUNC1(up, UART_IIR) >> 5;
		if (scratch == 7) {
			/*
			 * If this is a 16750, and not a cheap UART
			 * clone, then it should only go into 64 byte
			 * mode if the UART_FCR7_64BYTE bit was set
			 * while UART_LCR_DLAB was latched.
			 */
 			FUNC3(up, UART_FCR, UART_FCR_ENABLE_FIFO);
			FUNC3(up, UART_LCR, 0);
			FUNC3(up, UART_FCR,
				    UART_FCR_ENABLE_FIFO | UART_FCR7_64BYTE);
			scratch = FUNC1(up, UART_IIR) >> 5;
			if (scratch == 6)
				up->port.type = PORT_16750;
		}
		FUNC3(up, UART_FCR, UART_FCR_ENABLE_FIFO);
	}
	FUNC3(up, UART_LCR, save_lcr);
	if (up->port.type == PORT_16450) {
		scratch = FUNC1(up, UART_SCR);
		FUNC3(up, UART_SCR, 0xa5);
		status1 = FUNC1(up, UART_SCR);
		FUNC3(up, UART_SCR, 0x5a);
		status2 = FUNC1(up, UART_SCR);
		FUNC3(up, UART_SCR, scratch);

		if ((status1 != 0xa5) || (status2 != 0x5a))
			up->port.type = PORT_8250;
	}

	up->port.fifosize = uart_config[up->port.type].dfl_xmit_fifo_size;

	if (up->port.type == PORT_UNKNOWN)
		goto out;
	up->type_probed = up->port.type;	/* XXX */

	/*
	 * Reset the UART.
	 */
#ifdef CONFIG_SERIAL_8250_RSA
	if (up->port.type == PORT_RSA)
		serial_outp(up, UART_RSA_FRR, 0);
#endif
	FUNC3(up, UART_MCR, save_mcr);
	FUNC3(up, UART_FCR, (UART_FCR_ENABLE_FIFO |
				     UART_FCR_CLEAR_RCVR |
				     UART_FCR_CLEAR_XMIT));
	FUNC3(up, UART_FCR, 0);
	(void)FUNC1(up, UART_RX);
	FUNC3(up, UART_IER, 0);

out:
	FUNC5(&up->port.lock, flags);
}