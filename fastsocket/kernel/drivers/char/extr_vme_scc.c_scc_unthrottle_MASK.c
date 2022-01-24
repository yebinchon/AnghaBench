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
struct tty_struct {TYPE_1__* termios; struct scc_port* driver_data; } ;
struct scc_port {int dummy; } ;
struct TYPE_2__ {int c_cflag; } ;

/* Variables and functions */
 int CRTSCTS ; 
 scalar_t__ FUNC0 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct scc_port*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_struct*) ; 
 int /*<<< orphan*/  TCR_RTS ; 
 int /*<<< orphan*/  TX_CTRL_REG ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct tty_struct*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7 (struct tty_struct * tty)
{
	struct scc_port *port = tty->driver_data;
	unsigned long	flags;
	FUNC1(port);

	if (tty->termios->c_cflag & CRTSCTS) {
		FUNC5(flags);
		FUNC2(TX_CTRL_REG, 0xff, TCR_RTS);
		FUNC4(flags);
	}
	if (FUNC0(tty))
		FUNC6(tty, FUNC3(tty));
}