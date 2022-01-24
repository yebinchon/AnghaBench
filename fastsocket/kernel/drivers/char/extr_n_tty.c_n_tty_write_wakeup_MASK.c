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
struct tty_struct {scalar_t__ fasync; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  POLL_OUT ; 
 int /*<<< orphan*/  SIGIO ; 
 int /*<<< orphan*/  TTY_DO_WRITE_WAKEUP ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct tty_struct *tty)
{
	if (tty->fasync && FUNC1(TTY_DO_WRITE_WAKEUP, &tty->flags))
		FUNC0(&tty->fasync, SIGIO, POLL_OUT);
}