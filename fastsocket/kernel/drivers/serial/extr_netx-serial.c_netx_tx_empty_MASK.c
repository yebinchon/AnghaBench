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
struct uart_port {scalar_t__ membase; } ;

/* Variables and functions */
 int FR_BUSY ; 
 unsigned int TIOCSER_TEMT ; 
 scalar_t__ UART_FR ; 
 int FUNC0 (scalar_t__) ; 

__attribute__((used)) static unsigned int FUNC1(struct uart_port *port)
{
	return FUNC0(port->membase + UART_FR) & FR_BUSY ? 0 : TIOCSER_TEMT;
}