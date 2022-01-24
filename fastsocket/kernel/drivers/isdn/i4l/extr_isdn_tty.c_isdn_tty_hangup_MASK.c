#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {int /*<<< orphan*/  name; scalar_t__ driver_data; } ;
struct TYPE_4__ {int flags; int /*<<< orphan*/  open_wait; int /*<<< orphan*/ * tty; scalar_t__ count; } ;
typedef  TYPE_1__ modem_info ;

/* Variables and functions */
 int ISDN_ASYNC_CALLOUT_ACTIVE ; 
 int ISDN_ASYNC_NORMAL_ACTIVE ; 
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct tty_struct *tty)
{
	modem_info *info = (modem_info *) tty->driver_data;

	if (FUNC0(info, tty->name, "isdn_tty_hangup"))
		return;
	FUNC1(info);
	info->count = 0;
	info->flags &= ~(ISDN_ASYNC_NORMAL_ACTIVE | ISDN_ASYNC_CALLOUT_ACTIVE);
	info->tty = NULL;
	FUNC2(&info->open_wait);
}