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
struct TYPE_4__ {int tx; } ;
struct uart_port {int /*<<< orphan*/  dev; TYPE_2__ icount; TYPE_1__* state; } ;
struct circ_buf {int tail; int /*<<< orphan*/  head; } ;
struct atmel_dma_buffer {int ofs; scalar_t__ dma_addr; int /*<<< orphan*/  dma_size; } ;
struct atmel_uart_port {struct atmel_dma_buffer pdc_tx; } ;
struct TYPE_3__ {struct circ_buf xmit; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATMEL_PDC_TXTDIS ; 
 int /*<<< orphan*/  ATMEL_PDC_TXTEN ; 
 int ATMEL_US_ENDTX ; 
 int ATMEL_US_TXBUFE ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 scalar_t__ FUNC1 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_port*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_port*,scalar_t__) ; 
 int UART_XMIT_SIZE ; 
 scalar_t__ WAKEUP_CHARS ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct atmel_uart_port* FUNC7 (struct uart_port*) ; 
 scalar_t__ FUNC8 (struct circ_buf*) ; 
 int /*<<< orphan*/  FUNC9 (struct circ_buf*) ; 
 int /*<<< orphan*/  FUNC10 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC11 (struct uart_port*) ; 

__attribute__((used)) static void FUNC12(struct uart_port *port)
{
	struct atmel_uart_port *atmel_port = FUNC7(port);
	struct circ_buf *xmit = &port->state->xmit;
	struct atmel_dma_buffer *pdc = &atmel_port->pdc_tx;
	int count;

	/* nothing left to transmit? */
	if (FUNC1(port))
		return;

	xmit->tail += pdc->ofs;
	xmit->tail &= UART_XMIT_SIZE - 1;

	port->icount.tx += pdc->ofs;
	pdc->ofs = 0;

	/* more to transmit - setup next transfer */

	/* disable PDC transmit */
	FUNC3(port, ATMEL_PDC_TXTDIS);

	if (!FUNC9(xmit) && !FUNC10(port)) {
		FUNC6(port->dev,
					   pdc->dma_addr,
					   pdc->dma_size,
					   DMA_TO_DEVICE);

		count = FUNC0(xmit->head, xmit->tail, UART_XMIT_SIZE);
		pdc->ofs = count;

		FUNC5(port, pdc->dma_addr + xmit->tail);
		FUNC4(port, count);
		/* re-enable PDC transmit and interrupts */
		FUNC3(port, ATMEL_PDC_TXTEN);
		FUNC2(port, ATMEL_US_ENDTX | ATMEL_US_TXBUFE);
	}

	if (FUNC8(xmit) < WAKEUP_CHARS)
		FUNC11(port);
}