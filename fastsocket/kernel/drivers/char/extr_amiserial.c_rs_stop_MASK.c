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
struct tty_struct {int /*<<< orphan*/  name; struct async_struct* driver_data; } ;
struct async_struct {int IER; } ;
struct TYPE_2__ {void* intreq; void* intena; } ;

/* Variables and functions */
 void* IF_TBE ; 
 int UART_IER_THRI ; 
 TYPE_1__ custom ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (struct async_struct*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC4(struct tty_struct *tty)
{
	struct async_struct *info = tty->driver_data;
	unsigned long flags;

	if (FUNC3(info, tty->name, "rs_stop"))
		return;

	FUNC1(flags);
	if (info->IER & UART_IER_THRI) {
		info->IER &= ~UART_IER_THRI;
		/* disable Tx interrupt and remove any pending interrupts */
		custom.intena = IF_TBE;
		FUNC2();
		custom.intreq = IF_TBE;
		FUNC2();
	}
	FUNC0(flags);
}