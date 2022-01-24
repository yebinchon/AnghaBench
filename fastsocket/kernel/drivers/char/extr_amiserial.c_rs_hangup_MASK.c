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
struct tty_struct {int /*<<< orphan*/  name; struct async_struct* driver_data; } ;
struct serial_state {scalar_t__ count; } ;
struct async_struct {int /*<<< orphan*/  open_wait; int /*<<< orphan*/ * tty; int /*<<< orphan*/  flags; scalar_t__ event; struct serial_state* state; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASYNC_NORMAL_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (struct tty_struct*) ; 
 scalar_t__ FUNC1 (struct async_struct*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct async_struct*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct tty_struct *tty)
{
	struct async_struct * info = tty->driver_data;
	struct serial_state *state = info->state;

	if (FUNC1(info, tty->name, "rs_hangup"))
		return;

	state = info->state;

	FUNC0(tty);
	FUNC2(info);
	info->event = 0;
	state->count = 0;
	info->flags &= ~ASYNC_NORMAL_ACTIVE;
	info->tty = NULL;
	FUNC3(&info->open_wait);
}