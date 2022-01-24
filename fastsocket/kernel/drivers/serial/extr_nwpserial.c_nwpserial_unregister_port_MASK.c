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
struct TYPE_2__ {int /*<<< orphan*/  type; } ;
struct nwpserial_port {TYPE_1__ port; } ;

/* Variables and functions */
 int /*<<< orphan*/  PORT_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nwpserial_mutex ; 
 struct nwpserial_port* nwpserial_ports ; 
 int /*<<< orphan*/  nwpserial_reg ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 

void FUNC3(int line)
{
	struct nwpserial_port *up = &nwpserial_ports[line];
	FUNC0(&nwpserial_mutex);
	FUNC2(&nwpserial_reg, &up->port);

	up->port.type = PORT_UNKNOWN;

	FUNC1(&nwpserial_mutex);
}