#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct net_local {int /*<<< orphan*/  led_lock; } ;
struct TYPE_4__ {int sw_len; int ctrl; int /*<<< orphan*/  buf; } ;
struct TYPE_5__ {TYPE_1__ descr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NETWORK_ACTIVITY ; 
 scalar_t__ NET_FLASH_TIME ; 
 int /*<<< orphan*/ * R_DMA_CH0_CMD ; 
 int /*<<< orphan*/  clear_led_timer ; 
 int /*<<< orphan*/  cmd ; 
 int d_eol ; 
 int d_eop ; 
 int d_wait ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int led_active ; 
 scalar_t__ led_next_time ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 TYPE_2__* myLastTxDesc ; 
 TYPE_2__* myNextTxDesc ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  restart ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

void
FUNC9(struct net_local *np, char *buf, int length)
{
	FUNC0(FUNC4("e100 send pack, buf 0x%x len %d\n", buf, length));

	FUNC5(&np->led_lock);
	if (!led_active && FUNC7(jiffies, led_next_time)) {
		/* light the network leds depending on the current speed. */
		FUNC2(NETWORK_ACTIVITY);

		/* Set the earliest time we may clear the LED */
		led_next_time = jiffies + NET_FLASH_TIME;
		led_active = 1;
		FUNC3(&clear_led_timer, jiffies + HZ/10);
	}
	FUNC6(&np->led_lock);

	/* configure the tx dma descriptor */
	myNextTxDesc->descr.sw_len = length;
	myNextTxDesc->descr.ctrl = d_eop | d_eol | d_wait;
	myNextTxDesc->descr.buf = FUNC8(buf);

        /* Move end of list */
        myLastTxDesc->descr.ctrl &= ~d_eol;
        myLastTxDesc = myNextTxDesc;

	/* Restart DMA channel */
	*R_DMA_CH0_CMD = FUNC1(R_DMA_CH0_CMD, cmd, restart);
}