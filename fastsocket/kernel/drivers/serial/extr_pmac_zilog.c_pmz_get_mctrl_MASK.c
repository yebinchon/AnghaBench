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
struct uart_pmac_port {int /*<<< orphan*/ * node; } ;

/* Variables and functions */
 unsigned char CTS ; 
 unsigned char DCD ; 
 int /*<<< orphan*/  R0 ; 
 unsigned char SYNC_HUNT ; 
 unsigned int TIOCM_CAR ; 
 unsigned int TIOCM_CTS ; 
 unsigned int TIOCM_DSR ; 
 scalar_t__ FUNC0 (struct uart_pmac_port*) ; 
 unsigned char FUNC1 (struct uart_pmac_port*,int /*<<< orphan*/ ) ; 
 struct uart_pmac_port* FUNC2 (struct uart_port*) ; 

__attribute__((used)) static unsigned int FUNC3(struct uart_port *port)
{
	struct uart_pmac_port *uap = FUNC2(port);
	unsigned char status;
	unsigned int ret;

	if (FUNC0(uap) || uap->node == NULL)
		return 0;

	status = FUNC1(uap, R0);

	ret = 0;
	if (status & DCD)
		ret |= TIOCM_CAR;
	if (status & SYNC_HUNT)
		ret |= TIOCM_DSR;
	if (!(status & CTS))
		ret |= TIOCM_CTS;

	return ret;
}