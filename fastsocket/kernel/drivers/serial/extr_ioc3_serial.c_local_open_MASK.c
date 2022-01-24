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
struct ioc3_port {int ip_sscr; int ip_tx_lowat; TYPE_2__* ip_serial_regs; TYPE_1__* ip_uart_regs; int /*<<< orphan*/  ip_flags; } ;
struct TYPE_4__ {int /*<<< orphan*/  sscr; } ;
struct TYPE_3__ {int /*<<< orphan*/  iu_lcr; int /*<<< orphan*/  iu_fcr; } ;

/* Variables and functions */
 int /*<<< orphan*/  INPUT_ENABLE ; 
 int MAXITER ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int SSCR_DMA_EN ; 
 int SSCR_DMA_PAUSE ; 
 int SSCR_PAUSE_STATE ; 
 int SSCR_RX_THRESHOLD ; 
 int UART_FCR_CLEAR_RCVR ; 
 int UART_FCR_ENABLE_FIFO ; 
 int UART_LCR_WLEN8 ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC4(struct ioc3_port *port)
{
	int spiniter = 0;

	port->ip_flags = INPUT_ENABLE;

	/* Pause the DMA interface if necessary */
	if (port->ip_sscr & SSCR_DMA_EN) {
		FUNC3(port->ip_sscr | SSCR_DMA_PAUSE,
		       &port->ip_serial_regs->sscr);
		while ((FUNC1(&port->ip_serial_regs->sscr)
			& SSCR_PAUSE_STATE) == 0) {
			spiniter++;
			if (spiniter > MAXITER) {
				FUNC0();
				return -1;
			}
		}
	}

	/* Reset the input fifo.  If the uart received chars while the port
	 * was closed and DMA is not enabled, the uart may have a bunch of
	 * chars hanging around in its rx fifo which will not be discarded
	 * by rclr in the upper layer. We must get rid of them here.
	 */
	FUNC2(UART_FCR_ENABLE_FIFO | UART_FCR_CLEAR_RCVR,
	       &port->ip_uart_regs->iu_fcr);

	FUNC2(UART_LCR_WLEN8, &port->ip_uart_regs->iu_lcr);
	/* UART_LCR_STOP == 1 stop */

	/* Re-enable DMA, set default threshold to intr whenever there is
	 * data available.
	 */
	port->ip_sscr &= ~SSCR_RX_THRESHOLD;
	port->ip_sscr |= 1;	/* default threshold */

	/* Plug in the new sscr.  This implicitly clears the DMA_PAUSE
	 * flag if it was set above
	 */
	FUNC3(port->ip_sscr, &port->ip_serial_regs->sscr);
	port->ip_tx_lowat = 1;
	return 0;
}