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
struct uart_state {int /*<<< orphan*/  uart_port; } ;
struct tty_struct {TYPE_1__* termios; struct uart_state* driver_data; } ;
struct TYPE_2__ {int c_cflag; } ;

/* Variables and functions */
 int CDTRDSR ; 
 int CRTSCTS ; 
 scalar_t__ FUNC0 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_struct*) ; 
 int /*<<< orphan*/  TIOCM_DTR ; 
 int /*<<< orphan*/  TIOCM_RTS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_struct*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct tty_struct *tty)
{
	struct uart_state *state = tty->driver_data;

	if (FUNC0(tty))
		FUNC3(tty, FUNC1(tty));

	if (tty->termios->c_cflag & CRTSCTS)
		FUNC2(state->uart_port, TIOCM_RTS);
	if (tty->termios->c_cflag & CDTRDSR)
		FUNC2(state->uart_port, TIOCM_DTR);
}