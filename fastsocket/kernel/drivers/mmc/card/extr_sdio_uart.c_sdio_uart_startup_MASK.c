#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {unsigned char* buf; } ;
struct sdio_uart_port {int ier; TYPE_3__ xmit; int /*<<< orphan*/  func; TYPE_1__* tty; int /*<<< orphan*/  mctrl; } ;
struct TYPE_5__ {int c_cflag; } ;
struct TYPE_4__ {int hw_stopped; int /*<<< orphan*/  flags; TYPE_2__* termios; } ;

/* Variables and functions */
 int CBAUD ; 
 int CRTSCTS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int TIOCM_CTS ; 
 int TIOCM_DTR ; 
 int /*<<< orphan*/  TIOCM_OUT2 ; 
 int TIOCM_RTS ; 
 int /*<<< orphan*/  TTY_IO_ERROR ; 
 int /*<<< orphan*/  UART_FCR ; 
 int UART_FCR_CLEAR_RCVR ; 
 int UART_FCR_CLEAR_XMIT ; 
 int UART_FCR_ENABLE_FIFO ; 
 int UART_IER_RDI ; 
 int UART_IER_RLSI ; 
 int UART_IER_RTOIE ; 
 int UART_IER_UUE ; 
 int /*<<< orphan*/  UART_IIR ; 
 int /*<<< orphan*/  UART_LCR ; 
 int UART_LCR_WLEN8 ; 
 int /*<<< orphan*/  UART_LSR ; 
 int /*<<< orphan*/  UART_MSR ; 
 int /*<<< orphan*/  UART_RX ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (int /*<<< orphan*/ )) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sdio_uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sdio_uart_port*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sdio_uart_port*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct sdio_uart_port*) ; 
 int FUNC11 (struct sdio_uart_port*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct sdio_uart_port*) ; 
 int /*<<< orphan*/  FUNC14 (struct sdio_uart_port*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct sdio_uart_port *port)
{
	unsigned long page;
	int ret;

	/*
	 * Set the TTY IO error marker - we will only clear this
	 * once we have successfully opened the port.
	 */
	FUNC15(TTY_IO_ERROR, &port->tty->flags);

	/* Initialise and allocate the transmit buffer. */
	page = FUNC0(GFP_KERNEL);
	if (!page)
		return -ENOMEM;
	port->xmit.buf = (unsigned char *)page;
	FUNC1(&port->xmit);

	ret = FUNC10(port);
	if (ret)
		goto err1;
	ret = FUNC6(port->func);
	if (ret)
		goto err2;
	ret = FUNC4(port->func, sdio_uart_irq);
	if (ret)
		goto err3;

	/*
	 * Clear the FIFO buffers and disable them.
	 * (they will be reenabled in sdio_change_speed())
	 */
	FUNC8(port, UART_FCR, UART_FCR_ENABLE_FIFO);
	FUNC8(port, UART_FCR, UART_FCR_ENABLE_FIFO |
			UART_FCR_CLEAR_RCVR | UART_FCR_CLEAR_XMIT);
	FUNC8(port, UART_FCR, 0);

	/*
	 * Clear the interrupt registers.
	 */
	(void) FUNC7(port, UART_LSR);
	(void) FUNC7(port, UART_RX);
	(void) FUNC7(port, UART_IIR);
	(void) FUNC7(port, UART_MSR);

	/*
	 * Now, initialize the UART
	 */
	FUNC8(port, UART_LCR, UART_LCR_WLEN8);

	port->ier = UART_IER_RLSI | UART_IER_RDI | UART_IER_RTOIE | UART_IER_UUE;
	port->mctrl = TIOCM_OUT2;

	FUNC9(port, port->tty->termios, NULL);

	if (port->tty->termios->c_cflag & CBAUD)
		FUNC14(port, TIOCM_RTS | TIOCM_DTR);

	if (port->tty->termios->c_cflag & CRTSCTS)
		if (!(FUNC11(port) & TIOCM_CTS))
			port->tty->hw_stopped = 1;

	FUNC2(TTY_IO_ERROR, &port->tty->flags);

	/* Kick the IRQ handler once while we're still holding the host lock */
	FUNC12(port->func);

	FUNC13(port);
	return 0;

err3:
	FUNC5(port->func);
err2:
	FUNC13(port);
err1:
	FUNC3((unsigned long)port->xmit.buf);
	return ret;
}