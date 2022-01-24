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

/* Variables and functions */
 unsigned int FUNC0 (struct uart_port*) ; 
 unsigned int SYSFLG1 ; 
 unsigned int SYSFLG1_CTS ; 
 unsigned int SYSFLG1_DCD ; 
 unsigned int SYSFLG1_DSR ; 
 unsigned int TIOCM_CAR ; 
 unsigned int TIOCM_CTS ; 
 unsigned int TIOCM_DSR ; 
 unsigned int FUNC1 (unsigned int) ; 

__attribute__((used)) static unsigned int FUNC2(struct uart_port *port)
{
	unsigned int port_addr;
	unsigned int result = 0;
	unsigned int status;

	port_addr = FUNC0(port);
	if (port_addr == SYSFLG1) {
		status = FUNC1(SYSFLG1);
		if (status & SYSFLG1_DCD)
			result |= TIOCM_CAR;
		if (status & SYSFLG1_DSR)
			result |= TIOCM_DSR;
		if (status & SYSFLG1_CTS)
			result |= TIOCM_CTS;
	}

	return result;
}