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
typedef  int u_int ;
struct uart_port {int dummy; } ;

/* Variables and functions */
 int TIOCM_DTR ; 
 int TIOCM_RTS ; 
 unsigned int FUNC0 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*,unsigned int) ; 
 unsigned int URMC_URDTR ; 
 unsigned int URMC_URRTS ; 

__attribute__((used)) static void FUNC2(struct uart_port *port, u_int mctrl)
{
	unsigned int mcr;

	mcr = FUNC0(port);
	if (mctrl & TIOCM_RTS)
		mcr |= URMC_URRTS;
	else
		mcr &= ~URMC_URRTS;

	if (mctrl & TIOCM_DTR)
		mcr |= URMC_URDTR;
	else
		mcr &= ~URMC_URDTR;

	FUNC1(port, mcr);
}