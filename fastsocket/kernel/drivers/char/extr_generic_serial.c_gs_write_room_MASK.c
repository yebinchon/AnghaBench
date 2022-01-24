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
struct tty_struct {struct gs_port* driver_data; } ;
struct gs_port {int xmit_cnt; } ;

/* Variables and functions */
 int SERIAL_XMIT_SIZE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 

int FUNC2(struct tty_struct * tty)
{
	struct gs_port *port = tty->driver_data;
	int ret;

	FUNC0 ();
	ret = SERIAL_XMIT_SIZE - port->xmit_cnt - 1;
	if (ret < 0)
		ret = 0;
	FUNC1 ();
	return ret;
}