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
struct tty_struct {struct gs_port* driver_data; } ;
struct gs_port {int xmit_cnt; TYPE_1__* rd; } ;
struct TYPE_2__ {int (* chars_in_buffer ) (struct gs_port*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (struct gs_port*) ; 

__attribute__((used)) static int FUNC3(struct tty_struct *tty)
{
	struct gs_port *port;
	FUNC0 ();

	port = tty->driver_data;

	if (!port->rd) return 0;
	if (!port->rd->chars_in_buffer) return 0;

	FUNC1 ();
	return port->xmit_cnt + port->rd->chars_in_buffer (port);
}