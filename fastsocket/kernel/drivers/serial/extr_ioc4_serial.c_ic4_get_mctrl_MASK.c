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
typedef  int uint32_t ;
struct uart_port {int dummy; } ;
struct ioc4_port {TYPE_1__* ip_serial_regs; } ;
struct TYPE_2__ {int /*<<< orphan*/  shadow; } ;

/* Variables and functions */
 int IOC4_SHADOW_CTS ; 
 int IOC4_SHADOW_DCD ; 
 int IOC4_SHADOW_DR ; 
 unsigned int TIOCM_CAR ; 
 unsigned int TIOCM_CTS ; 
 unsigned int TIOCM_DSR ; 
 struct ioc4_port* FUNC0 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ioc4_port*,struct uart_port*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned int FUNC3(struct uart_port *the_port)
{
	struct ioc4_port *port = FUNC0(the_port, 0);
	uint32_t shadow;
	unsigned int ret = 0;

	if (!FUNC1(port, the_port))
		return 0;

	shadow = FUNC2(&port->ip_serial_regs->shadow);
	if (shadow & IOC4_SHADOW_DCD)
		ret |= TIOCM_CAR;
	if (shadow & IOC4_SHADOW_DR)
		ret |= TIOCM_DSR;
	if (shadow & IOC4_SHADOW_CTS)
		ret |= TIOCM_CTS;
	return ret;
}