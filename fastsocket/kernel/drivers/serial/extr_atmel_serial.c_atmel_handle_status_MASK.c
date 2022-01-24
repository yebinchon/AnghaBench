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
struct uart_port {int dummy; } ;
struct atmel_uart_port {unsigned int irq_status; int /*<<< orphan*/  tasklet; } ;

/* Variables and functions */
 unsigned int ATMEL_US_CTSIC ; 
 unsigned int ATMEL_US_DCDIC ; 
 unsigned int ATMEL_US_DSRIC ; 
 unsigned int ATMEL_US_RIIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct atmel_uart_port* FUNC1 (struct uart_port*) ; 

__attribute__((used)) static void
FUNC2(struct uart_port *port, unsigned int pending,
		    unsigned int status)
{
	struct atmel_uart_port *atmel_port = FUNC1(port);

	if (pending & (ATMEL_US_RIIC | ATMEL_US_DSRIC | ATMEL_US_DCDIC
				| ATMEL_US_CTSIC)) {
		atmel_port->irq_status = status;
		FUNC0(&atmel_port->tasklet);
	}
}