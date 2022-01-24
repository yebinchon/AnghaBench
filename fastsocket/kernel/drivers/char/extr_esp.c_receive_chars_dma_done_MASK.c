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
struct tty_struct {int dummy; } ;
struct TYPE_4__ {int rx; int /*<<< orphan*/  parity; int /*<<< orphan*/  frame; int /*<<< orphan*/  brk; } ;
struct TYPE_3__ {int flags; struct tty_struct* tty; } ;
struct esp_struct {int read_status_mask; int ignore_status_mask; TYPE_2__ icount; TYPE_1__ port; int /*<<< orphan*/  stat_flags; } ;

/* Variables and functions */
 int ASYNC_SAK ; 
 int /*<<< orphan*/  ESP_STAT_DMA_RX ; 
 int TTY_BREAK ; 
 int TTY_FRAME ; 
 int TTY_PARITY ; 
 unsigned long FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dma ; 
 int /*<<< orphan*/ * dma_buffer ; 
 int dma_bytes ; 
 int /*<<< orphan*/  FUNC3 (struct tty_struct*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct esp_struct*,int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct tty_struct*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct tty_struct*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (struct tty_struct*) ; 

__attribute__((used)) static inline void FUNC10(struct esp_struct *info,
					    int status)
{
	struct tty_struct *tty = info->port.tty;
	int num_bytes;
	unsigned long flags;

	flags = FUNC0();
	FUNC2(dma);
	FUNC1(dma);

	info->stat_flags &= ~ESP_STAT_DMA_RX;
	num_bytes = dma_bytes - FUNC4(dma);
	FUNC6(flags);

	info->icount.rx += num_bytes;

	if (num_bytes > 0) {
		FUNC8(tty, dma_buffer, num_bytes - 1);

		status &= (0x1c & info->read_status_mask);

		/* Is the status significant or do we throw the last byte ? */
		if (!(status & info->ignore_status_mask)) {
			int statflag = 0;

			if (status & 0x10) {
				statflag = TTY_BREAK;
				(info->icount.brk)++;
				if (info->port.flags & ASYNC_SAK)
					FUNC3(tty);
			} else if (status & 0x08) {
				statflag = TTY_FRAME;
				info->icount.frame++;
			} else if (status & 0x04) {
				statflag = TTY_PARITY;
				info->icount.parity++;
			}
			FUNC7(tty, dma_buffer[num_bytes - 1],
								statflag);
		}
		FUNC9(tty);
	}

	if (dma_bytes != num_bytes) {
		num_bytes = dma_bytes - num_bytes;
		dma_bytes = 0;
		FUNC5(info, num_bytes);
	} else
		dma_bytes = 0;
}