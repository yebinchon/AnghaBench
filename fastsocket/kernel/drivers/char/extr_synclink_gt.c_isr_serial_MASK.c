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
struct TYPE_6__ {int /*<<< orphan*/  exithunt; int /*<<< orphan*/  rxidle; int /*<<< orphan*/  brk; } ;
struct TYPE_5__ {int flags; scalar_t__ tty; } ;
struct TYPE_4__ {scalar_t__ mode; } ;
struct slgt_info {int irq_occurred; unsigned short ignore_status_mask; int read_status_mask; int /*<<< orphan*/  event_wait_q; TYPE_3__ icount; scalar_t__ rx_pio; TYPE_2__ port; scalar_t__ tx_count; TYPE_1__ params; int /*<<< orphan*/  device_name; } ;

/* Variables and functions */
 int ASYNC_SAK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 unsigned short IRQ_CTS ; 
 unsigned short IRQ_DCD ; 
 unsigned short IRQ_DSR ; 
 unsigned short IRQ_RI ; 
 unsigned short IRQ_RXBREAK ; 
 unsigned short IRQ_RXDATA ; 
 unsigned short IRQ_RXIDLE ; 
 unsigned short IRQ_RXOVER ; 
 unsigned short IRQ_TXIDLE ; 
 unsigned short IRQ_TXUNDER ; 
 int MASK_BREAK ; 
 scalar_t__ MGSL_MODE_ASYNC ; 
 unsigned short RXBREAK ; 
 unsigned short RXIDLE ; 
 int /*<<< orphan*/  SSR ; 
 int /*<<< orphan*/  TTY_BREAK ; 
 int /*<<< orphan*/  FUNC1 (struct slgt_info*,unsigned short) ; 
 int /*<<< orphan*/  FUNC2 (struct slgt_info*,unsigned short) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct slgt_info*,unsigned short) ; 
 int /*<<< orphan*/  FUNC5 (struct slgt_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct slgt_info*,unsigned short) ; 
 unsigned short FUNC7 (struct slgt_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct slgt_info*,unsigned short) ; 
 int /*<<< orphan*/  FUNC9 (struct slgt_info*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct slgt_info*,int /*<<< orphan*/ ,unsigned short) ; 

__attribute__((used)) static void FUNC13(struct slgt_info *info)
{
	unsigned short status = FUNC7(info, SSR);

	FUNC0(("%s isr_serial status=%04X\n", info->device_name, status));

	FUNC12(info, SSR, status); /* clear pending */

	info->irq_occurred = true;

	if (info->params.mode == MGSL_MODE_ASYNC) {
		if (status & IRQ_TXIDLE) {
			if (info->tx_count)
				FUNC6(info, status);
		}
		if (info->rx_pio && (status & IRQ_RXDATA))
			FUNC5(info);
		if ((status & IRQ_RXBREAK) && (status & RXBREAK)) {
			info->icount.brk++;
			/* process break detection if tty control allows */
			if (info->port.tty) {
				if (!(status & info->ignore_status_mask)) {
					if (info->read_status_mask & MASK_BREAK) {
						FUNC10(info->port.tty, 0, TTY_BREAK);
						if (info->port.flags & ASYNC_SAK)
							FUNC3(info->port.tty);
					}
				}
			}
		}
	} else {
		if (status & (IRQ_TXIDLE + IRQ_TXUNDER))
			FUNC6(info, status);
		if (info->rx_pio && (status & IRQ_RXDATA))
			FUNC5(info);
		if (status & IRQ_RXIDLE) {
			if (status & RXIDLE)
				info->icount.rxidle++;
			else
				info->icount.exithunt++;
			FUNC11(&info->event_wait_q);
		}

		if (status & IRQ_RXOVER)
			FUNC9(info);
	}

	if (status & IRQ_DSR)
		FUNC4(info, status);
	if (status & IRQ_CTS)
		FUNC1(info, status);
	if (status & IRQ_DCD)
		FUNC2(info, status);
	if (status & IRQ_RI)
		FUNC8(info, status);
}