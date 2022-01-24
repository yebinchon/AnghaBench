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
struct uart_port {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
struct atmel_dma_buffer {int /*<<< orphan*/  dma_size; int /*<<< orphan*/  dma_addr; int /*<<< orphan*/  buf; } ;
struct atmel_uart_port {struct atmel_dma_buffer pdc_tx; struct atmel_dma_buffer* pdc_rx; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATMEL_US_RSTSTA ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_port*) ; 
 scalar_t__ FUNC5 (struct uart_port*) ; 
 scalar_t__ FUNC6 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct uart_port*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 struct atmel_uart_port* FUNC10 (struct uart_port*) ; 

__attribute__((used)) static void FUNC11(struct uart_port *port)
{
	struct atmel_uart_port *atmel_port = FUNC10(port);
	/*
	 * Ensure everything is stopped.
	 */
	FUNC3(port);
	FUNC4(port);

	/*
	 * Shut-down the DMA.
	 */
	if (FUNC5(port)) {
		int i;

		for (i = 0; i < 2; i++) {
			struct atmel_dma_buffer *pdc = &atmel_port->pdc_rx[i];

			FUNC7(port->dev,
					 pdc->dma_addr,
					 pdc->dma_size,
					 DMA_FROM_DEVICE);
			FUNC9(pdc->buf);
		}
	}
	if (FUNC6(port)) {
		struct atmel_dma_buffer *pdc = &atmel_port->pdc_tx;

		FUNC7(port->dev,
				 pdc->dma_addr,
				 pdc->dma_size,
				 DMA_TO_DEVICE);
	}

	/*
	 * Disable all interrupts, port and break condition.
	 */
	FUNC0(port, ATMEL_US_RSTSTA);
	FUNC1(port, -1);

	/*
	 * Free the interrupt
	 */
	FUNC8(port->irq, port);

	/*
	 * If there is a specific "close" function (to unregister
	 * control line interrupts)
	 */
	if (&atmel_close_hook)
		FUNC2(port);
}