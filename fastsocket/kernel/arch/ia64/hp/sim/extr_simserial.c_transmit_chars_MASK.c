#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int head; int tail; char* buf; } ;
struct async_struct {char x_char; TYPE_4__ xmit; TYPE_3__* tty; TYPE_2__* state; } ;
struct TYPE_13__ {int /*<<< orphan*/  (* write ) (TYPE_5__*,char*,int) ;} ;
struct TYPE_11__ {scalar_t__ stopped; scalar_t__ hw_stopped; } ;
struct TYPE_9__ {int /*<<< orphan*/  tx; } ;
struct TYPE_10__ {TYPE_1__ icount; } ;

/* Variables and functions */
 int FUNC0 (int,int,int) ; 
 int SERIAL_XMIT_SIZE ; 
 TYPE_5__* console ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,char*,int) ; 

__attribute__((used)) static void FUNC8(struct async_struct *info, int *intr_done)
{
	int count;
	unsigned long flags;


	FUNC2(flags);

	if (info->x_char) {
		char c = info->x_char;

		console->write(console, &c, 1);

		info->state->icount.tx++;
		info->x_char = 0;

		goto out;
	}

	if (info->xmit.head == info->xmit.tail || info->tty->stopped || info->tty->hw_stopped) {
#ifdef SIMSERIAL_DEBUG
		printk("transmit_chars: head=%d, tail=%d, stopped=%d\n",
		       info->xmit.head, info->xmit.tail, info->tty->stopped);
#endif
		goto out;
	}
	/*
	 * We removed the loop and try to do it in to chunks. We need
	 * 2 operations maximum because it's a ring buffer.
	 *
	 * First from current to tail if possible.
	 * Then from the beginning of the buffer until necessary
	 */

	count = FUNC3(FUNC0(info->xmit.head, info->xmit.tail, SERIAL_XMIT_SIZE),
		    SERIAL_XMIT_SIZE - info->xmit.tail);
	console->write(console, info->xmit.buf+info->xmit.tail, count);

	info->xmit.tail = (info->xmit.tail+count) & (SERIAL_XMIT_SIZE-1);

	/*
	 * We have more at the beginning of the buffer
	 */
	count = FUNC0(info->xmit.head, info->xmit.tail, SERIAL_XMIT_SIZE);
	if (count) {
		console->write(console, info->xmit.buf, count);
		info->xmit.tail += count;
	}
out:
	FUNC1(flags);
}