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
 int SERIAL_XMIT_SIZE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (struct specialix_port*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC3(struct tty_struct *tty)
{
	struct specialix_port *port = tty->driver_data;
	int	ret;

	FUNC0();

	if (FUNC2(port, tty->name, "sx_write_room")) {
		FUNC1();
		return 0;
	}

	ret = SERIAL_XMIT_SIZE - port->xmit_cnt - 1;
	if (ret < 0)
		ret = 0;

	FUNC1();
	return ret;
}