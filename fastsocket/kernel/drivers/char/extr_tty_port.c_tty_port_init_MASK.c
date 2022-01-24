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
struct tty_port {int close_delay; int closing_wait; int /*<<< orphan*/  lock; int /*<<< orphan*/  mutex; int /*<<< orphan*/  delta_msr_wait; int /*<<< orphan*/  close_wait; int /*<<< orphan*/  open_wait; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_port*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct tty_port *port)
{
	FUNC1(port, 0, sizeof(*port));
	FUNC0(&port->open_wait);
	FUNC0(&port->close_wait);
	FUNC0(&port->delta_msr_wait);
	FUNC2(&port->mutex);
	FUNC3(&port->lock);
	port->close_delay = (50 * HZ) / 100;
	port->closing_wait = (3000 * HZ) / 100;
}