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
struct tty_struct {int /*<<< orphan*/  name; struct slgt_info* driver_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  open_wait; int /*<<< orphan*/ * tty; int /*<<< orphan*/  flags; scalar_t__ count; } ;
struct slgt_info {TYPE_1__ port; int /*<<< orphan*/  device_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASYNC_NORMAL_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_struct*) ; 
 scalar_t__ FUNC2 (struct slgt_info*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct slgt_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct tty_struct *tty)
{
	struct slgt_info *info = tty->driver_data;

	if (FUNC2(info, tty->name, "hangup"))
		return;
	FUNC0(("%s hangup\n", info->device_name));

	FUNC1(tty);
	FUNC3(info);

	info->port.count = 0;
	info->port.flags &= ~ASYNC_NORMAL_ACTIVE;
	info->port.tty = NULL;

	FUNC4(&info->port.open_wait);
}