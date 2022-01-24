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
struct sci_port {int break_flag; int /*<<< orphan*/  port; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sci_port*) ; 

__attribute__((used)) static void FUNC2(unsigned long data)
{
	struct sci_port *port = (struct sci_port *)data;

	if (FUNC0(&port->port) == 0) {
		port->break_flag = 1;
		FUNC1(port);
	} else if (port->break_flag == 1) {
		/* break is over. */
		port->break_flag = 2;
		FUNC1(port);
	} else
		port->break_flag = 0;
}