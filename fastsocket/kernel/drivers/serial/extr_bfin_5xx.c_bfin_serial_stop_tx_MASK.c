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
struct uart_port {int dummy; } ;
struct circ_buf {int tail; } ;
struct TYPE_4__ {int tx; } ;
struct TYPE_6__ {TYPE_1__ icount; TYPE_2__* state; } ;
struct bfin_serial_port {int tx_count; int tx_done; TYPE_3__ port; int /*<<< orphan*/  tx_dma_channel; } ;
struct TYPE_5__ {struct circ_buf xmit; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETBEI ; 
 int TEMT ; 
 int /*<<< orphan*/  TFI ; 
 int /*<<< orphan*/  FUNC0 (struct bfin_serial_port*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct bfin_serial_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfin_serial_port*,int /*<<< orphan*/ ) ; 
 int UART_XMIT_SIZE ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct uart_port *port)
{
	struct bfin_serial_port *uart = (struct bfin_serial_port *)port;
#ifdef CONFIG_SERIAL_BFIN_DMA
	struct circ_buf *xmit = &uart->port.state->xmit;
#endif

	while (!(FUNC1(uart) & TEMT))
		FUNC3();

#ifdef CONFIG_SERIAL_BFIN_DMA
	disable_dma(uart->tx_dma_channel);
	xmit->tail = (xmit->tail + uart->tx_count) & (UART_XMIT_SIZE - 1);
	uart->port.icount.tx += uart->tx_count;
	uart->tx_count = 0;
	uart->tx_done = 1;
#else
#ifdef CONFIG_BF54x
	/* Clear TFI bit */
	UART_PUT_LSR(uart, TFI);
#endif
	FUNC0(uart, ETBEI);
#endif
}