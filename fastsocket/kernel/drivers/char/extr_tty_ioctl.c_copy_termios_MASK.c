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
struct tty_struct {int /*<<< orphan*/  termios_mutex; int /*<<< orphan*/  termios; } ;
struct ktermios {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ktermios*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct tty_struct *tty, struct ktermios *kterm)
{
	FUNC1(&tty->termios_mutex);
	FUNC0(kterm, tty->termios, sizeof(struct ktermios));
	FUNC2(&tty->termios_mutex);
}