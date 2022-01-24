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
struct zilog_channel {int dummy; } ;
struct uart_port {int dummy; } ;
struct uart_ip22zilog_port {unsigned char* curregs; } ;

/* Variables and functions */
 unsigned char CTSIE ; 
 unsigned char DCDIE ; 
 size_t R15 ; 
 unsigned char SYNCIE ; 
 struct zilog_channel* FUNC0 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct zilog_channel*,size_t,unsigned char) ; 

__attribute__((used)) static void FUNC2(struct uart_port *port)
{
	struct uart_ip22zilog_port *up = (struct uart_ip22zilog_port *) port;
	struct zilog_channel *channel = FUNC0(port);
	unsigned char new_reg;

	new_reg = up->curregs[R15] | (DCDIE | SYNCIE | CTSIE);
	if (new_reg != up->curregs[R15]) {
		up->curregs[R15] = new_reg;

		/* NOTE: Not subject to 'transmitter active' rule.  */
		FUNC1(channel, R15, up->curregs[R15]);
	}
}