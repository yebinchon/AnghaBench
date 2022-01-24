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
struct uart_port {int dummy; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct pnx8xxx_port {TYPE_1__ port; } ;

/* Variables and functions */
 scalar_t__ PORT_PNX8XXX ; 

__attribute__((used)) static const char *FUNC0(struct uart_port *port)
{
	struct pnx8xxx_port *sport = (struct pnx8xxx_port *)port;

	return sport->port.type == PORT_PNX8XXX ? "PNX8XXX" : NULL;
}