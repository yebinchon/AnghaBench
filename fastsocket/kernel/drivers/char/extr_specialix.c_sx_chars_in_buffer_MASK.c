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
struct tty_struct {int /*<<< orphan*/  name; struct specialix_port* driver_data; } ;
struct specialix_port {int xmit_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (struct specialix_port*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC3(struct tty_struct *tty)
{
	struct specialix_port *port = tty->driver_data;

	FUNC0();

	if (FUNC2(port, tty->name, "sx_chars_in_buffer")) {
		FUNC1();
		return 0;
	}
	FUNC1();
	return port->xmit_cnt;
}