#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct etrax_recv_buffer {int dummy; } ;
struct etrax_dma_descr {scalar_t__ buf; } ;
struct TYPE_8__ {TYPE_3__* tty; } ;
struct TYPE_5__ {int /*<<< orphan*/ * buf; } ;
struct e100_serial {int* ioport; int tx_ctrl; int flags; TYPE_4__ port; TYPE_1__ xmit; int /*<<< orphan*/  irq; int /*<<< orphan*/  line; scalar_t__ tr_running; scalar_t__ uses_dma_out; void** ocmdadr; scalar_t__ uses_dma_in; void** icmdadr; struct etrax_dma_descr* rec_descr; } ;
struct TYPE_7__ {int /*<<< orphan*/  flags; TYPE_2__* termios; } ;
struct TYPE_6__ {int c_cflag; } ;

/* Variables and functions */
 int ASYNC_INITIALIZED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int HUPCL ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t REG_TR_CTRL ; 
 int /*<<< orphan*/  R_DMA_CH6_CMD ; 
 int SERIAL_RECV_DESCRIPTORS ; 
 int /*<<< orphan*/  TTY_IO_ERROR ; 
 int /*<<< orphan*/  cmd ; 
 int /*<<< orphan*/  FUNC3 (struct e100_serial*) ; 
 int /*<<< orphan*/  FUNC4 (struct e100_serial*) ; 
 int /*<<< orphan*/  FUNC5 (struct e100_serial*) ; 
 int /*<<< orphan*/  FUNC6 (struct e100_serial*) ; 
 int /*<<< orphan*/  FUNC7 (struct e100_serial*) ; 
 int /*<<< orphan*/  FUNC8 (struct e100_serial*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct e100_serial*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (struct etrax_recv_buffer*) ; 
 int /*<<< orphan*/  FUNC12 (unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (unsigned long) ; 
 struct etrax_recv_buffer* FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  reset ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC17(struct e100_serial * info)
{
	unsigned long flags;
	struct etrax_dma_descr *descr = info->rec_descr;
	struct etrax_recv_buffer *buffer;
	int i;

#ifndef CONFIG_SVINTO_SIM
	/* shut down the transmitter and receiver */
	FUNC1(FUNC0(info->line, "shutdown %i\n", info->line));
	FUNC3(info);
	info->ioport[REG_TR_CTRL] = (info->tx_ctrl &= ~0x40);

	/* disable interrupts, reset dma channels */
	if (info->uses_dma_in) {
		FUNC4(info);
		*info->icmdadr = FUNC2(R_DMA_CH6_CMD, cmd, reset);
		info->uses_dma_in = 0;
	} else {
		FUNC5(info);
	}

	if (info->uses_dma_out) {
		FUNC7(info);
		info->tr_running = 0;
		*info->ocmdadr = FUNC2(R_DMA_CH6_CMD, cmd, reset);
		info->uses_dma_out = 0;
	} else {
		FUNC6(info);
		info->tr_running = 0;
	}

#endif /* CONFIG_SVINTO_SIM */

	if (!(info->flags & ASYNC_INITIALIZED))
		return;

#ifdef SERIAL_DEBUG_OPEN
	printk("Shutting down serial port %d (irq %d)....\n", info->line,
	       info->irq);
#endif

	FUNC13(flags);

	if (info->xmit.buf) {
		FUNC10((unsigned long)info->xmit.buf);
		info->xmit.buf = NULL;
	}

	for (i = 0; i < SERIAL_RECV_DESCRIPTORS; i++)
		if (descr[i].buf) {
			buffer = FUNC14(descr[i].buf) - sizeof *buffer;
			FUNC11(buffer);
			descr[i].buf = 0;
		}

	if (!info->port.tty || (info->port.tty->termios->c_cflag & HUPCL)) {
		/* hang up DTR and RTS if HUPCL is enabled */
		FUNC8(info, 0);
		FUNC9(info, 0); /* could check CRTSCTS before doing this */
	}

	if (info->port.tty)
		FUNC16(TTY_IO_ERROR, &info->port.tty->flags);

	info->flags &= ~ASYNC_INITIALIZED;
	FUNC12(flags);
}