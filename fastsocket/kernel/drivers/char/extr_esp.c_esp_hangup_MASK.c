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
struct tty_struct {int /*<<< orphan*/  name; struct esp_struct* driver_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  open_wait; int /*<<< orphan*/ * tty; int /*<<< orphan*/  flags; scalar_t__ count; } ;
struct esp_struct {TYPE_1__ port; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASYNC_NORMAL_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (struct tty_struct*) ; 
 scalar_t__ FUNC1 (struct esp_struct*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct esp_struct*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct tty_struct *tty)
{
	struct esp_struct *info = tty->driver_data;

	if (FUNC1(info, tty->name, "esp_hangup"))
		return;

	FUNC0(tty);
	FUNC2(info);
	info->port.count = 0;
	info->port.flags &= ~ASYNC_NORMAL_ACTIVE;
	info->port.tty = NULL;
	FUNC3(&info->port.open_wait);
}