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
struct tty_struct {scalar_t__ stopped; scalar_t__ driver_data; } ;
struct e100_serial {char x_char; int /*<<< orphan*/  line; int /*<<< orphan*/ * ocmdadr; scalar_t__ uses_dma_out; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  R_DMA_CH6_CMD ; 
 int /*<<< orphan*/  cmd ; 
 int /*<<< orphan*/  FUNC5 (struct e100_serial*) ; 
 int /*<<< orphan*/  FUNC6 (struct e100_serial*) ; 
 int /*<<< orphan*/  hold ; 
 int /*<<< orphan*/  FUNC7 (unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct tty_struct*) ; 

__attribute__((used)) static void FUNC10(struct tty_struct *tty, char ch)
{
	struct e100_serial *info = (struct e100_serial *)tty->driver_data;
	unsigned long flags;
	FUNC8(flags);
	if (info->uses_dma_out) {
		/* Put the DMA on hold and disable the channel */
		*info->ocmdadr = FUNC3(R_DMA_CH6_CMD, cmd, hold);
		while (FUNC2(R_DMA_CH6_CMD, cmd, *info->ocmdadr) !=
		       FUNC4(R_DMA_CH6_CMD, cmd, hold));
		FUNC5(info);
	}

	/* Must make sure transmitter is not stopped before we can transmit */
	if (tty->stopped)
		FUNC9(tty);

	/* Enable manual transmit interrupt and send from there */
	FUNC1(FUNC0(info->line, "rs_send_xchar 0x%02X\n", ch));
	info->x_char = ch;
	FUNC6(info);
	FUNC7(flags);
}