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
struct uart_cpm_port {scalar_t__* gpios; } ;

/* Variables and functions */
 size_t GPIO_DTR ; 
 size_t GPIO_RTS ; 
 unsigned int TIOCM_DTR ; 
 unsigned int TIOCM_RTS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 

__attribute__((used)) static void FUNC1(struct uart_port *port, unsigned int mctrl)
{
	struct uart_cpm_port *pinfo = (struct uart_cpm_port *)port;

	if (pinfo->gpios[GPIO_RTS] >= 0)
		FUNC0(pinfo->gpios[GPIO_RTS], !(mctrl & TIOCM_RTS));

	if (pinfo->gpios[GPIO_DTR] >= 0)
		FUNC0(pinfo->gpios[GPIO_DTR], !(mctrl & TIOCM_DTR));
}