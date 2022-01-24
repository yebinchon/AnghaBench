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
struct tty_struct {struct r_port* driver_data; } ;
struct r_port {int /*<<< orphan*/  slock; int /*<<< orphan*/  channel; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct r_port*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct tty_struct *tty, int break_state)
{
	struct r_port *info = tty->driver_data;
	unsigned long flags;

	if (FUNC0(info, "rp_break"))
		return -EINVAL;

	FUNC3(&info->slock, flags);
	if (break_state == -1)
		FUNC2(&info->channel);
	else
		FUNC1(&info->channel);
	FUNC4(&info->slock, flags);
	return 0;
}