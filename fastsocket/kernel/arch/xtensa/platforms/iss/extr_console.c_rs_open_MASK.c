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
struct tty_struct {int index; int count; } ;
struct file {int dummy; } ;
struct TYPE_4__ {unsigned long data; int /*<<< orphan*/  function; } ;

/* Variables and functions */
 int ENODEV ; 
 int SERIAL_MAX_NUM_LINES ; 
 scalar_t__ SERIAL_TIMER_VALUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  rs_poll ; 
 TYPE_1__ serial_timer ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  timer_lock ; 

__attribute__((used)) static int FUNC4(struct tty_struct *tty, struct file * filp)
{
	int line = tty->index;

	if ((line < 0) || (line >= SERIAL_MAX_NUM_LINES))
		return -ENODEV;

	FUNC2(&timer_lock);

	if (tty->count == 1) {
		FUNC0(&serial_timer);
		serial_timer.data = (unsigned long) tty;
		serial_timer.function = rs_poll;
		FUNC1(&serial_timer, jiffies + SERIAL_TIMER_VALUE);
	}
	FUNC3(&timer_lock);

	return 0;
}