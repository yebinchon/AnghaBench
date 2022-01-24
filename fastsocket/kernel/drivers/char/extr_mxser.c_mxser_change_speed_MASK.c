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
struct tty_struct {size_t index; int hw_stopped; TYPE_1__* termios; struct mxser_port* driver_data; } ;
struct TYPE_5__ {int /*<<< orphan*/  flags; } ;
struct mxser_port {scalar_t__ type; int rx_trigger; unsigned int IER; unsigned int MCR; int read_status_mask; int ignore_status_mask; scalar_t__ ioaddr; TYPE_3__* board; TYPE_2__ port; } ;
struct ktermios {int dummy; } ;
struct TYPE_6__ {scalar_t__ chip_flag; } ;
struct TYPE_4__ {unsigned int c_cflag; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASYNC_CHECK_CD ; 
 int /*<<< orphan*/  ASYNC_CTS_FLOW ; 
 unsigned int CLOCAL ; 
 unsigned int CMSPAR ; 
 unsigned int CRTSCTS ; 
#define  CS5 131 
#define  CS6 130 
#define  CS7 129 
#define  CS8 128 
 unsigned int CSIZE ; 
 unsigned int CSTOPB ; 
 scalar_t__ FUNC0 (struct tty_struct*) ; 
 scalar_t__ FUNC1 (struct tty_struct*) ; 
 scalar_t__ FUNC2 (struct tty_struct*) ; 
 scalar_t__ FUNC3 (struct tty_struct*) ; 
 scalar_t__ FUNC4 (struct tty_struct*) ; 
 scalar_t__ FUNC5 (struct tty_struct*) ; 
 scalar_t__ FUNC6 (struct tty_struct*) ; 
 unsigned int MOXA_MUST_FCR_GDA_MODE_ENABLE ; 
 unsigned int PARENB ; 
 unsigned int PARODD ; 
 scalar_t__ PORT_16450 ; 
 scalar_t__ PORT_16550A ; 
 scalar_t__ PORT_8250 ; 
 int /*<<< orphan*/  FUNC7 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC8 (struct tty_struct*) ; 
 scalar_t__ UART_FCR ; 
 unsigned int UART_FCR_ENABLE_FIFO ; 
 unsigned int UART_FCR_TRIGGER_1 ; 
 unsigned int UART_FCR_TRIGGER_14 ; 
 unsigned int UART_FCR_TRIGGER_4 ; 
 unsigned int UART_FCR_TRIGGER_8 ; 
 scalar_t__ UART_IER ; 
 unsigned int UART_IER_MSI ; 
 unsigned int UART_IER_THRI ; 
 scalar_t__ UART_LCR ; 
 unsigned int UART_LCR_EPAR ; 
 unsigned int UART_LCR_PARITY ; 
 unsigned int UART_LCR_SPAR ; 
 int UART_LSR_BI ; 
 int UART_LSR_DR ; 
 int UART_LSR_FE ; 
 int UART_LSR_OE ; 
 int UART_LSR_PE ; 
 int UART_LSR_THRE ; 
 scalar_t__ UART_MCR ; 
 unsigned int UART_MCR_AFE ; 
 scalar_t__ UART_MSR ; 
 unsigned char UART_MSR_CTS ; 
 unsigned char FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct tty_struct*,int /*<<< orphan*/ ) ; 
 scalar_t__* mxser_set_baud_method ; 
 int /*<<< orphan*/  FUNC15 (struct mxser_port*) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC20 (struct tty_struct*) ; 

__attribute__((used)) static int FUNC21(struct tty_struct *tty,
					struct ktermios *old_termios)
{
	struct mxser_port *info = tty->driver_data;
	unsigned cflag, cval, fcr;
	int ret = 0;
	unsigned char status;

	cflag = tty->termios->c_cflag;
	if (!info->ioaddr)
		return ret;

	if (mxser_set_baud_method[tty->index] == 0)
		FUNC14(tty, FUNC19(tty));

	/* byte size and parity */
	switch (cflag & CSIZE) {
	case CS5:
		cval = 0x00;
		break;
	case CS6:
		cval = 0x01;
		break;
	case CS7:
		cval = 0x02;
		break;
	case CS8:
		cval = 0x03;
		break;
	default:
		cval = 0x00;
		break;		/* too keep GCC shut... */
	}
	if (cflag & CSTOPB)
		cval |= 0x04;
	if (cflag & PARENB)
		cval |= UART_LCR_PARITY;
	if (!(cflag & PARODD))
		cval |= UART_LCR_EPAR;
	if (cflag & CMSPAR)
		cval |= UART_LCR_SPAR;

	if ((info->type == PORT_8250) || (info->type == PORT_16450)) {
		if (info->board->chip_flag) {
			fcr = UART_FCR_ENABLE_FIFO;
			fcr |= MOXA_MUST_FCR_GDA_MODE_ENABLE;
			FUNC15(info);
		} else
			fcr = 0;
	} else {
		fcr = UART_FCR_ENABLE_FIFO;
		if (info->board->chip_flag) {
			fcr |= MOXA_MUST_FCR_GDA_MODE_ENABLE;
			FUNC15(info);
		} else {
			switch (info->rx_trigger) {
			case 1:
				fcr |= UART_FCR_TRIGGER_1;
				break;
			case 4:
				fcr |= UART_FCR_TRIGGER_4;
				break;
			case 8:
				fcr |= UART_FCR_TRIGGER_8;
				break;
			default:
				fcr |= UART_FCR_TRIGGER_14;
				break;
			}
		}
	}

	/* CTS flow control flag and modem status interrupts */
	info->IER &= ~UART_IER_MSI;
	info->MCR &= ~UART_MCR_AFE;
	if (cflag & CRTSCTS) {
		info->port.flags |= ASYNC_CTS_FLOW;
		info->IER |= UART_IER_MSI;
		if ((info->type == PORT_16550A) || (info->board->chip_flag)) {
			info->MCR |= UART_MCR_AFE;
		} else {
			status = FUNC9(info->ioaddr + UART_MSR);
			if (tty->hw_stopped) {
				if (status & UART_MSR_CTS) {
					tty->hw_stopped = 0;
					if (info->type != PORT_16550A &&
							!info->board->chip_flag) {
						FUNC18(info->IER & ~UART_IER_THRI,
							info->ioaddr +
							UART_IER);
						info->IER |= UART_IER_THRI;
						FUNC18(info->IER, info->ioaddr +
								UART_IER);
					}
					FUNC20(tty);
				}
			} else {
				if (!(status & UART_MSR_CTS)) {
					tty->hw_stopped = 1;
					if ((info->type != PORT_16550A) &&
							(!info->board->chip_flag)) {
						info->IER &= ~UART_IER_THRI;
						FUNC18(info->IER, info->ioaddr +
								UART_IER);
					}
				}
			}
		}
	} else {
		info->port.flags &= ~ASYNC_CTS_FLOW;
	}
	FUNC18(info->MCR, info->ioaddr + UART_MCR);
	if (cflag & CLOCAL) {
		info->port.flags &= ~ASYNC_CHECK_CD;
	} else {
		info->port.flags |= ASYNC_CHECK_CD;
		info->IER |= UART_IER_MSI;
	}
	FUNC18(info->IER, info->ioaddr + UART_IER);

	/*
	 * Set up parity check flag
	 */
	info->read_status_mask = UART_LSR_OE | UART_LSR_THRE | UART_LSR_DR;
	if (FUNC3(tty))
		info->read_status_mask |= UART_LSR_FE | UART_LSR_PE;
	if (FUNC0(tty) || FUNC6(tty))
		info->read_status_mask |= UART_LSR_BI;

	info->ignore_status_mask = 0;

	if (FUNC1(tty)) {
		info->ignore_status_mask |= UART_LSR_BI;
		info->read_status_mask |= UART_LSR_BI;
		/*
		 * If we're ignore parity and break indicators, ignore
		 * overruns too.  (For real raw support).
		 */
		if (FUNC2(tty)) {
			info->ignore_status_mask |=
						UART_LSR_OE |
						UART_LSR_PE |
						UART_LSR_FE;
			info->read_status_mask |=
						UART_LSR_OE |
						UART_LSR_PE |
						UART_LSR_FE;
		}
	}
	if (info->board->chip_flag) {
		FUNC17(info->ioaddr, FUNC7(tty));
		FUNC16(info->ioaddr, FUNC8(tty));
		if (FUNC5(tty)) {
			FUNC12(
					info->ioaddr);
		} else {
			FUNC10(
					info->ioaddr);
		}
		if (FUNC4(tty)) {
			FUNC13(
					info->ioaddr);
		} else {
			FUNC11(
					info->ioaddr);
		}
	}


	FUNC18(fcr, info->ioaddr + UART_FCR);	/* set fcr */
	FUNC18(cval, info->ioaddr + UART_LCR);

	return ret;
}