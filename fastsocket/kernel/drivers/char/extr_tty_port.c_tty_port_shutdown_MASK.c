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
struct tty_port {TYPE_1__* ops; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* shutdown ) (struct tty_port*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ASYNCB_INITIALIZED ; 
 int /*<<< orphan*/  FUNC0 (struct tty_port*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct tty_port *port)
{
	if (port->ops->shutdown &&
		FUNC1(ASYNCB_INITIALIZED, &port->flags))
			port->ops->shutdown(port);

}