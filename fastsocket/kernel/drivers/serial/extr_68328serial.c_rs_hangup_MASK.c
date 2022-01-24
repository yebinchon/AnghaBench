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
struct tty_struct {int /*<<< orphan*/  name; scalar_t__ driver_data; } ;
struct TYPE_2__ {int /*<<< orphan*/ * tty; } ;
struct m68k_serial {int /*<<< orphan*/  open_wait; TYPE_1__ port; int /*<<< orphan*/  flags; scalar_t__ count; scalar_t__ event; } ;

/* Variables and functions */
 int /*<<< orphan*/  S_NORMAL_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (struct tty_struct*) ; 
 scalar_t__ FUNC1 (struct m68k_serial*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct m68k_serial*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct tty_struct *tty)
{
	struct m68k_serial * info = (struct m68k_serial *)tty->driver_data;
	
	if (FUNC1(info, tty->name, "rs_hangup"))
		return;
	
	FUNC0(tty);
	FUNC2(info);
	info->event = 0;
	info->count = 0;
	info->flags &= ~S_NORMAL_ACTIVE;
	info->port.tty = NULL;
	FUNC3(&info->open_wait);
}