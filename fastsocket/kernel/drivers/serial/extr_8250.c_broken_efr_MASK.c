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
struct uart_8250_port {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct uart_8250_port*) ; 
 int FUNC1 (struct uart_8250_port*) ; 

__attribute__((used)) static int FUNC2(struct uart_8250_port *up)
{
	/*
	 * Exar ST16C2550 "A2" devices incorrectly detect as
	 * having an EFR, and report an ID of 0x0201.  See
	 * http://www.exar.com/info.php?pdf=dan180_oct2004.pdf
	 */
	if (FUNC0(up) == 0x0201 && FUNC1(up) == 16)
		return 1;

	return 0;
}