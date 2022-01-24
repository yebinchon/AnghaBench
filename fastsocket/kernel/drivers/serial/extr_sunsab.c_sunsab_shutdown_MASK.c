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
struct TYPE_8__ {int /*<<< orphan*/  irq; int /*<<< orphan*/  lock; } ;
struct uart_sunsab_port {int interrupt_mask0; int interrupt_mask1; int cached_dafo; int cached_mode; TYPE_4__ port; TYPE_3__* regs; } ;
struct uart_port {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  ccr0; int /*<<< orphan*/  mode; int /*<<< orphan*/  dafo; } ;
struct TYPE_5__ {int /*<<< orphan*/  imr1; int /*<<< orphan*/  imr0; } ;
struct TYPE_7__ {TYPE_2__ rw; TYPE_1__ w; } ;

/* Variables and functions */
 int SAB82532_CCR0_PU ; 
 int SAB82532_DAFO_XBRK ; 
 int SAB82532_MODE_RAC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct uart_sunsab_port*) ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int tmp ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct uart_port *port)
{
	struct uart_sunsab_port *up = (struct uart_sunsab_port *) port;
	unsigned long flags;

	FUNC2(&up->port.lock, flags);

	/* Disable Interrupts */
	up->interrupt_mask0 = 0xff;
	FUNC4(up->interrupt_mask0, &up->regs->w.imr0);
	up->interrupt_mask1 = 0xff;
	FUNC4(up->interrupt_mask1, &up->regs->w.imr1);

	/* Disable break condition */
	up->cached_dafo = FUNC1(&up->regs->rw.dafo);
	up->cached_dafo &= ~SAB82532_DAFO_XBRK;
	FUNC4(up->cached_dafo, &up->regs->rw.dafo);

	/* Disable Receiver */	
	up->cached_mode &= ~SAB82532_MODE_RAC;
	FUNC4(up->cached_mode, &up->regs->rw.mode);

	/*
	 * XXX FIXME
	 *
	 * If the chip is powered down here the system hangs/crashes during
	 * reboot or shutdown.  This needs to be investigated further,
	 * similar behaviour occurs in 2.4 when the driver is configured
	 * as a module only.  One hint may be that data is sometimes
	 * transmitted at 9600 baud during shutdown (regardless of the
	 * speed the chip was configured for when the port was open).
	 */
#if 0
	/* Power Down */	
	tmp = readb(&up->regs->rw.ccr0);
	tmp &= ~SAB82532_CCR0_PU;
	writeb(tmp, &up->regs->rw.ccr0);
#endif

	FUNC3(&up->port.lock, flags);
	FUNC0(up->port.irq, up);
}