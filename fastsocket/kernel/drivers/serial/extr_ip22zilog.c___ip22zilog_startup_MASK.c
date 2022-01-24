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
struct zilog_channel {int /*<<< orphan*/  control; } ;
struct uart_ip22zilog_port {int* curregs; int /*<<< orphan*/  prev_status; int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int EXT_INT_ENAB ; 
 int INT_ALL_Rx ; 
 size_t R1 ; 
 size_t R3 ; 
 size_t R5 ; 
 size_t R9 ; 
 int RxENAB ; 
 int TxENAB ; 
 int TxINT_ENAB ; 
 struct zilog_channel* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_ip22zilog_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct zilog_channel*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_ip22zilog_port*,struct zilog_channel*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct zilog_channel*,size_t,int) ; 

__attribute__((used)) static void FUNC6(struct uart_ip22zilog_port *up)
{
	struct zilog_channel *channel;

	channel = FUNC0(&up->port);

	FUNC1(up);

	FUNC2(channel, up->curregs);
	/* set master interrupt enable */
	FUNC5(channel, R9, up->curregs[R9]);
	up->prev_status = FUNC4(&channel->control);

	/* Enable receiver and transmitter.  */
	up->curregs[R3] |= RxENAB;
	up->curregs[R5] |= TxENAB;

	up->curregs[R1] |= EXT_INT_ENAB | INT_ALL_Rx | TxINT_ENAB;
	FUNC3(up, channel);
}