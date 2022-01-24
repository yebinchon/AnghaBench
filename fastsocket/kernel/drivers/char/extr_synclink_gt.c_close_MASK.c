#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {TYPE_1__* driver; int /*<<< orphan*/  name; struct slgt_info* driver_data; } ;
struct TYPE_5__ {int flags; int /*<<< orphan*/  count; int /*<<< orphan*/ * tty; } ;
struct slgt_info {TYPE_2__ port; int /*<<< orphan*/  timeout; int /*<<< orphan*/  device_name; } ;
struct file {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ASYNC_INITIALIZED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_struct*) ; 
 scalar_t__ FUNC2 (struct slgt_info*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct slgt_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,struct tty_struct*) ; 
 scalar_t__ FUNC6 (TYPE_2__*,struct tty_struct*,struct file*) ; 
 int /*<<< orphan*/  FUNC7 (struct tty_struct*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct tty_struct *tty, struct file *filp)
{
	struct slgt_info *info = tty->driver_data;

	if (FUNC2(info, tty->name, "close"))
		return;
	FUNC0(("%s close entry, count=%d\n", info->device_name, info->port.count));

	if (FUNC6(&info->port, tty, filp) == 0)
		goto cleanup;

 	if (info->port.flags & ASYNC_INITIALIZED)
 		FUNC7(tty, info->timeout);
	FUNC1(tty);
	FUNC4(tty);

	FUNC3(info);

	FUNC5(&info->port, tty);
	info->port.tty = NULL;
cleanup:
	FUNC0(("%s close exit, count=%d\n", tty->driver->name, info->port.count));
}