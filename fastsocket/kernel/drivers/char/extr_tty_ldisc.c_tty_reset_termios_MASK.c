#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {int /*<<< orphan*/  termios_mutex; TYPE_2__* termios; TYPE_1__* driver; } ;
struct TYPE_5__ {int /*<<< orphan*/  c_ospeed; int /*<<< orphan*/  c_ispeed; } ;
struct TYPE_4__ {TYPE_2__ init_termios; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC4(struct tty_struct *tty)
{
	FUNC0(&tty->termios_mutex);
	*tty->termios = tty->driver->init_termios;
	tty->termios->c_ispeed = FUNC3(tty->termios);
	tty->termios->c_ospeed = FUNC2(tty->termios);
	FUNC1(&tty->termios_mutex);
}