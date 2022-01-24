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
struct tty_struct {struct moxa_port* driver_data; } ;
struct TYPE_2__ {int flags; } ;
struct moxa_port {TYPE_1__ port; } ;

/* Variables and functions */
 int ASYNC_INITIALIZED ; 
 scalar_t__ FUNC0 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct moxa_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct moxa_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  moxa_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct tty_struct *tty)
{
	struct moxa_port *ch = tty->driver_data;

	if (!(ch->port.flags & ASYNC_INITIALIZED))
		return;

	FUNC1(ch);

	/*
	 * If we're a modem control device and HUPCL is on, drop RTS & DTR.
	 */
	if (FUNC0(tty))
		FUNC2(ch, 0, 0);

	FUNC3(&moxa_lock);
	ch->port.flags &= ~ASYNC_INITIALIZED;
	FUNC4(&moxa_lock);
}