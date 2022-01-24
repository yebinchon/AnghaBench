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
struct port {TYPE_1__* aggregator; int /*<<< orphan*/  actor_port_number; } ;
struct TYPE_2__ {int /*<<< orphan*/  aggregator_identifier; scalar_t__ is_active; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct port*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct port *port)
{
	if (port->aggregator->is_active) {
		FUNC1("Enabling port %d(LAG %d)\n", port->actor_port_number, port->aggregator->aggregator_identifier);
		FUNC0(port);
	}
}