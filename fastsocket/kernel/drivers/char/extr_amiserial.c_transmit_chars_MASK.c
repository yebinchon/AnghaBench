#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int head; int tail; int* buf; } ;
struct async_struct {int x_char; int /*<<< orphan*/  IER; TYPE_4__ xmit; TYPE_3__* state; TYPE_1__* tty; } ;
struct TYPE_10__ {int serdat; void* intena; void* intreq; } ;
struct TYPE_7__ {int /*<<< orphan*/  tx; } ;
struct TYPE_8__ {TYPE_2__ icount; } ;
struct TYPE_6__ {scalar_t__ hw_stopped; scalar_t__ stopped; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int,int) ; 
 void* IF_TBE ; 
 int /*<<< orphan*/  RS_EVENT_WRITE_WAKEUP ; 
 int SERIAL_XMIT_SIZE ; 
 int /*<<< orphan*/  UART_IER_THRI ; 
 scalar_t__ WAKEUP_CHARS ; 
 TYPE_5__ custom ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct async_struct*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct async_struct *info)
{
	custom.intreq = IF_TBE;
	FUNC1();
	if (info->x_char) {
	        custom.serdat = info->x_char | 0x100;
		FUNC1();
		info->state->icount.tx++;
		info->x_char = 0;
		return;
	}
	if (info->xmit.head == info->xmit.tail
	    || info->tty->stopped
	    || info->tty->hw_stopped) {
		info->IER &= ~UART_IER_THRI;
	        custom.intena = IF_TBE;
		FUNC1();
		return;
	}

	custom.serdat = info->xmit.buf[info->xmit.tail++] | 0x100;
	FUNC1();
	info->xmit.tail = info->xmit.tail & (SERIAL_XMIT_SIZE-1);
	info->state->icount.tx++;

	if (FUNC0(info->xmit.head,
		     info->xmit.tail,
		     SERIAL_XMIT_SIZE) < WAKEUP_CHARS)
		FUNC3(info, RS_EVENT_WRITE_WAKEUP);

#ifdef SERIAL_DEBUG_INTR
	printk("THRE...");
#endif
	if (info->xmit.head == info->xmit.tail) {
	        custom.intena = IF_TBE;
		FUNC1();
		info->IER &= ~UART_IER_THRI;
	}
}