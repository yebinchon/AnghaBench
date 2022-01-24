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
typedef  int u8 ;
struct jsm_channel {int ch_r_watermark; int ch_r_tlevel; int /*<<< orphan*/  ch_mostat; TYPE_2__* ch_neo_uart; TYPE_1__* ch_bd; } ;
struct TYPE_4__ {int /*<<< orphan*/  ier; int /*<<< orphan*/  rfifo; int /*<<< orphan*/  fctr; int /*<<< orphan*/  efr; } ;
struct TYPE_3__ {int /*<<< orphan*/  pci_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  INFO ; 
 int /*<<< orphan*/  PARAM ; 
 int UART_17158_EFR_ECB ; 
 int UART_17158_EFR_IXOFF ; 
 int UART_17158_EFR_RTSDTR ; 
 int UART_17158_FCTR_RTS_4DELAY ; 
 int UART_17158_FCTR_TRGD ; 
 int UART_17158_IER_RTSDTR ; 
 int UART_17158_IER_XOFF ; 
 int /*<<< orphan*/  UART_MCR_RTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct jsm_channel *ch)
{
	u8 ier, efr;
	ier = FUNC1(&ch->ch_neo_uart->ier);
	efr = FUNC1(&ch->ch_neo_uart->efr);

	FUNC0(PARAM, INFO, &ch->ch_bd->pci_dev, "Setting RTSFLOW\n");

	/* Turn on auto RTS flow control */
	ier |= (UART_17158_IER_RTSDTR);
	efr |= (UART_17158_EFR_ECB | UART_17158_EFR_RTSDTR);

	/* Turn off auto Xoff flow control */
	ier &= ~(UART_17158_IER_XOFF);
	efr &= ~(UART_17158_EFR_IXOFF);

	/* Why? Becuz Exar's spec says we have to zero it out before setting it */
	FUNC2(0, &ch->ch_neo_uart->efr);

	/* Turn on UART enhanced bits */
	FUNC2(efr, &ch->ch_neo_uart->efr);

	FUNC2((UART_17158_FCTR_TRGD | UART_17158_FCTR_RTS_4DELAY), &ch->ch_neo_uart->fctr);
	ch->ch_r_watermark = 4;

	FUNC2(56, &ch->ch_neo_uart->rfifo);
	ch->ch_r_tlevel = 56;

	FUNC2(ier, &ch->ch_neo_uart->ier);

	/*
	 * From the Neo UART spec sheet:
	 * The auto RTS/DTR function must be started by asserting
	 * RTS/DTR# output pin (MCR bit-0 or 1 to logic 1 after
	 * it is enabled.
	 */
	ch->ch_mostat |= (UART_MCR_RTS);
}