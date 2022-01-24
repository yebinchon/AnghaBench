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
struct serial_struct {scalar_t__ type; scalar_t__ irq; scalar_t__ io_type; int baud_base; void* iomem_base; scalar_t__ port; scalar_t__ hub6; } ;
struct TYPE_2__ {scalar_t__ irq; int uartclk; scalar_t__ iobase; scalar_t__ mapbase; } ;
struct sa1100_port {TYPE_1__ port; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ PORT_SA1100 ; 
 scalar_t__ PORT_UNKNOWN ; 
 scalar_t__ SERIAL_IO_MEM ; 

__attribute__((used)) static int
FUNC0(struct uart_port *port, struct serial_struct *ser)
{
	struct sa1100_port *sport = (struct sa1100_port *)port;
	int ret = 0;

	if (ser->type != PORT_UNKNOWN && ser->type != PORT_SA1100)
		ret = -EINVAL;
	if (sport->port.irq != ser->irq)
		ret = -EINVAL;
	if (ser->io_type != SERIAL_IO_MEM)
		ret = -EINVAL;
	if (sport->port.uartclk / 16 != ser->baud_base)
		ret = -EINVAL;
	if ((void *)sport->port.mapbase != ser->iomem_base)
		ret = -EINVAL;
	if (sport->port.iobase != ser->port)
		ret = -EINVAL;
	if (ser->hub6 != 0)
		ret = -EINVAL;
	return ret;
}