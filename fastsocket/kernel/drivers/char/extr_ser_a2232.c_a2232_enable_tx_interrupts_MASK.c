#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct a2232status {scalar_t__ OutDisable; } ;
struct TYPE_3__ {int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {TYPE_1__ port; } ;
struct a2232_port {TYPE_2__ gs; int /*<<< orphan*/  which_port_on_a2232; int /*<<< orphan*/  which_a2232; } ;

/* Variables and functions */
 int /*<<< orphan*/  GS_TX_INTEN ; 
 struct a2232status* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 

__attribute__((used)) static void FUNC3(void *ptr)
{
	struct a2232_port *port;
	volatile struct a2232status *stat;
	unsigned long flags;

	port = ptr;
	stat = FUNC0(port->which_a2232, port->which_port_on_a2232);
	stat->OutDisable = 0;

	/* Does this here really have to be? */
	FUNC2(flags);
	port->gs.port.flags |= GS_TX_INTEN;
	FUNC1(flags);
}