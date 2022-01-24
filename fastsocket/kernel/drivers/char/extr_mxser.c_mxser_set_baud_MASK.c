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
struct tty_struct {struct mxser_port* driver_data; } ;
struct mxser_port {long max_baud; int baud_base; int timeout; int xmit_fifo_size; unsigned char MCR; scalar_t__ ioaddr; } ;

/* Variables and functions */
 scalar_t__ BOTHER ; 
 scalar_t__ FUNC0 (struct tty_struct*) ; 
 int HZ ; 
 scalar_t__ UART_DLL ; 
 scalar_t__ UART_DLM ; 
 scalar_t__ UART_LCR ; 
 unsigned char UART_LCR_DLAB ; 
 scalar_t__ UART_MCR ; 
 unsigned char UART_MCR_DTR ; 
 unsigned char FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct tty_struct*,int,int) ; 

__attribute__((used)) static int FUNC5(struct tty_struct *tty, long newspd)
{
	struct mxser_port *info = tty->driver_data;
	int quot = 0, baud;
	unsigned char cval;

	if (!info->ioaddr)
		return -1;

	if (newspd > info->max_baud)
		return -1;

	if (newspd == 134) {
		quot = 2 * info->baud_base / 269;
		FUNC4(tty, 134, 134);
	} else if (newspd) {
		quot = info->baud_base / newspd;
		if (quot == 0)
			quot = 1;
		baud = info->baud_base/quot;
		FUNC4(tty, baud, baud);
	} else {
		quot = 0;
	}

	info->timeout = ((info->xmit_fifo_size * HZ * 10 * quot) / info->baud_base);
	info->timeout += HZ / 50;	/* Add .02 seconds of slop */

	if (quot) {
		info->MCR |= UART_MCR_DTR;
		FUNC3(info->MCR, info->ioaddr + UART_MCR);
	} else {
		info->MCR &= ~UART_MCR_DTR;
		FUNC3(info->MCR, info->ioaddr + UART_MCR);
		return 0;
	}

	cval = FUNC1(info->ioaddr + UART_LCR);

	FUNC3(cval | UART_LCR_DLAB, info->ioaddr + UART_LCR);	/* set DLAB */

	FUNC3(quot & 0xff, info->ioaddr + UART_DLL);	/* LS of divisor */
	FUNC3(quot >> 8, info->ioaddr + UART_DLM);	/* MS of divisor */
	FUNC3(cval, info->ioaddr + UART_LCR);	/* reset DLAB */

#ifdef BOTHER
	if (C_BAUD(tty) == BOTHER) {
		quot = info->baud_base % newspd;
		quot *= 8;
		if (quot % newspd > newspd / 2) {
			quot /= newspd;
			quot++;
		} else
			quot /= newspd;

		mxser_set_must_enum_value(info->ioaddr, quot);
	} else
#endif
		FUNC2(info->ioaddr, 0);

	return 0;
}