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
struct tty_struct {int /*<<< orphan*/  termios_mutex; TYPE_1__* ops; struct ktermios* termios; } ;
struct ktermios {int dummy; } ;
typedef  int /*<<< orphan*/  speed_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* set_termios ) (struct tty_struct*,struct ktermios*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct tty_struct*,struct ktermios*) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct tty_struct *tty, speed_t baudrate)
{
	struct ktermios old_termios;

	FUNC0(&tty->termios_mutex);
	old_termios =*(tty->termios);
	FUNC3(tty, baudrate, baudrate);
	tty->ops->set_termios(tty, &old_termios);
	FUNC1(&tty->termios_mutex);
}