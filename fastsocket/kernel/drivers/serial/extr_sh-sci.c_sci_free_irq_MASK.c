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
struct sci_port {scalar_t__* irqs; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct sci_port*) ; 

__attribute__((used)) static void FUNC2(struct sci_port *port)
{
	int i;

	if (port->irqs[0] == port->irqs[1])
		FUNC1(port->irqs[0], port);
	else {
		for (i = 0; i < FUNC0(port->irqs); i++) {
			if (!port->irqs[i])
				continue;

			FUNC1(port->irqs[i], port);
		}
	}
}