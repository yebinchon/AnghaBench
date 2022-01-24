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
struct TYPE_6__ {int flags; TYPE_2__* tty; int /*<<< orphan*/  delta_msr_wait; } ;
struct esp_struct {int stat_flags; int MCR; int /*<<< orphan*/  lock; TYPE_3__ port; scalar_t__ IER; int /*<<< orphan*/ * xmit_buf; struct esp_struct* next_port; int /*<<< orphan*/  irq; int /*<<< orphan*/  break_wait; int /*<<< orphan*/  line; } ;
struct TYPE_5__ {int /*<<< orphan*/  flags; TYPE_1__* termios; } ;
struct TYPE_4__ {int c_cflag; } ;

/* Variables and functions */
 int ASYNC_INITIALIZED ; 
 int /*<<< orphan*/  DMA_BUFFER_SZ ; 
 int ESI_SET_SRV_MASK ; 
 int ESI_WRITE_UART ; 
 int ESP_STAT_DMA_RX ; 
 int ESP_STAT_DMA_TX ; 
 int HUPCL ; 
 int /*<<< orphan*/  TTY_IO_ERROR ; 
 int /*<<< orphan*/  UART_ESI_CMD1 ; 
 int /*<<< orphan*/  UART_ESI_CMD2 ; 
 int UART_MCR ; 
 int UART_MCR_DTR ; 
 int UART_MCR_OUT2 ; 
 int UART_MCR_RTS ; 
 unsigned long FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dma ; 
 int /*<<< orphan*/ * dma_buffer ; 
 scalar_t__ dma_bytes ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct esp_struct*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct esp_struct* ports ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (struct esp_struct*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC15(struct esp_struct *info)
{
	unsigned long	flags, f;

	if (!(info->port.flags & ASYNC_INITIALIZED))
		return;

#ifdef SERIAL_DEBUG_OPEN
	printk("Shutting down serial port %d (irq %d)....", info->line,
	       info->irq);
#endif

	FUNC12(&info->lock, flags);
	/*
	 * clear delta_msr_wait queue to avoid mem leaks: we may free the irq
	 * here so the queue might never be waken up
	 */
	FUNC14(&info->port.delta_msr_wait);
	FUNC14(&info->break_wait);

	/* stop a DMA transfer on the port being closed */
	/* DMA lock is higher priority always */
	if (info->stat_flags & (ESP_STAT_DMA_RX | ESP_STAT_DMA_TX)) {
		f = FUNC0();
		FUNC2(dma);
		FUNC1(dma);
		FUNC9(f);

		dma_bytes = 0;
	}

	/*
	 * Free the IRQ
	 */
	FUNC4(info->irq, info);

	if (dma_buffer) {
		struct esp_struct *current_port = ports;

		while (current_port) {
			if ((current_port != info) &&
			    (current_port->port.flags & ASYNC_INITIALIZED))
				break;

			current_port = current_port->next_port;
		}

		if (!current_port) {
			FUNC3(dma);
			FUNC6((unsigned long)dma_buffer,
				   FUNC7(DMA_BUFFER_SZ));
			dma_buffer = NULL;
		}
	}

	if (info->xmit_buf) {
		FUNC5((unsigned long) info->xmit_buf);
		info->xmit_buf = NULL;
	}

	info->IER = 0;
	FUNC10(info, UART_ESI_CMD1, ESI_SET_SRV_MASK);
	FUNC10(info, UART_ESI_CMD2, 0x00);

	if (!info->port.tty || (info->port.tty->termios->c_cflag & HUPCL))
		info->MCR &= ~(UART_MCR_DTR|UART_MCR_RTS);

	info->MCR &= ~UART_MCR_OUT2;
	FUNC10(info, UART_ESI_CMD1, ESI_WRITE_UART);
	FUNC10(info, UART_ESI_CMD2, UART_MCR);
	FUNC10(info, UART_ESI_CMD2, info->MCR);

	if (info->port.tty)
		FUNC11(TTY_IO_ERROR, &info->port.tty->flags);

	info->port.flags &= ~ASYNC_INITIALIZED;
	FUNC13(&info->lock, flags);
}