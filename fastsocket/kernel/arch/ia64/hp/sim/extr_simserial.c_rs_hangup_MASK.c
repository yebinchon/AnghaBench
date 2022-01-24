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
struct tty_struct {scalar_t__ driver_data; } ;
struct serial_state {scalar_t__ count; } ;
struct async_struct {int flags; int /*<<< orphan*/  open_wait; int /*<<< orphan*/ * tty; scalar_t__ event; struct serial_state* state; } ;

/* Variables and functions */
 int ASYNC_CLOSING ; 
 int ASYNC_NORMAL_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct async_struct*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct tty_struct *tty)
{
	struct async_struct * info = (struct async_struct *)tty->driver_data;
	struct serial_state *state = info->state;

#ifdef SIMSERIAL_DEBUG
	printk("rs_hangup: called\n");
#endif

	state = info->state;

	FUNC1(tty);
	if (info->flags & ASYNC_CLOSING)
		return;
	FUNC2(info);

	info->event = 0;
	state->count = 0;
	info->flags &= ~ASYNC_NORMAL_ACTIVE;
	info->tty = NULL;
	FUNC3(&info->open_wait);
}