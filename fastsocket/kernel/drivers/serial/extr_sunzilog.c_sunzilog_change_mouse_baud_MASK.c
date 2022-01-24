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
struct uart_sunzilog_port {unsigned int cflag; int* curregs; int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 unsigned int CBAUD ; 
 size_t R12 ; 
 size_t R13 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int ZS_CLOCK ; 
 int ZS_CLOCK_DIVISOR ; 
 unsigned int FUNC2 (unsigned int,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_sunzilog_port*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct uart_sunzilog_port *up)
{
	unsigned int cur_cflag = up->cflag;
	int brg, new_baud;

	up->cflag &= ~CBAUD;
	up->cflag |= FUNC2(cur_cflag, &new_baud);

	brg = FUNC0(new_baud, ZS_CLOCK / ZS_CLOCK_DIVISOR);
	up->curregs[R12] = (brg & 0xff);
	up->curregs[R13] = (brg >> 8) & 0xff;
	FUNC3(up, FUNC1(&up->port));
}