#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct jsm_channel {int ch_flags; int /*<<< orphan*/  ch_bd; TYPE_1__* ch_neo_uart; } ;
struct TYPE_2__ {int /*<<< orphan*/  lcr; } ;

/* Variables and functions */
 int CH_BREAK_SENDING ; 
 int UART_LCR_SBC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct jsm_channel *ch)
{
	/*
	 * Set the time we should stop sending the break.
	 * If we are already sending a break, toss away the existing
	 * time to stop, and use this new value instead.
	 */

	/* Tell the UART to start sending the break */
	if (!(ch->ch_flags & CH_BREAK_SENDING)) {
		u8 temp = FUNC1(&ch->ch_neo_uart->lcr);
		FUNC2((temp | UART_LCR_SBC), &ch->ch_neo_uart->lcr);
		ch->ch_flags |= (CH_BREAK_SENDING);

		/* flush write operation */
		FUNC0(ch->ch_bd);
	}
}