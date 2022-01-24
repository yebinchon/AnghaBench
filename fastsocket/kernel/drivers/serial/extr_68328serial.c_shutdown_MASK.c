#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* tty; } ;
struct m68k_serial {size_t line; int flags; TYPE_2__ port; scalar_t__ xmit_buf; } ;
struct TYPE_7__ {scalar_t__ ustcnt; } ;
typedef  TYPE_3__ m68328_uart ;
struct TYPE_5__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int S_INITIALIZED ; 
 int /*<<< orphan*/  TTY_IO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_3__* uart_addr ; 

__attribute__((used)) static void FUNC4(struct m68k_serial * info)
{
	m68328_uart *uart = &uart_addr[info->line];
	unsigned long	flags;

	uart->ustcnt = 0; /* All off! */
	if (!(info->flags & S_INITIALIZED))
		return;

	FUNC2(flags);
	
	if (info->xmit_buf) {
		FUNC0((unsigned long) info->xmit_buf);
		info->xmit_buf = 0;
	}

	if (info->port.tty)
		FUNC3(TTY_IO_ERROR, &info->port.tty->flags);
	
	info->flags &= ~S_INITIALIZED;
	FUNC1(flags);
}