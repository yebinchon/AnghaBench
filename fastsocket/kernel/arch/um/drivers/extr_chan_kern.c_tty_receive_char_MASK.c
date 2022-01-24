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
struct tty_struct {int /*<<< orphan*/  raw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tty_struct*) ; 
 scalar_t__ FUNC1 (struct tty_struct*) ; 
 char FUNC2 (struct tty_struct*) ; 
 char FUNC3 (struct tty_struct*) ; 
 int /*<<< orphan*/  TTY_NORMAL ; 
 int /*<<< orphan*/  FUNC4 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC6 (struct tty_struct*,char,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct tty_struct *tty, char ch)
{
	if (tty == NULL)
		return;

	if (FUNC1(tty) && !FUNC0(tty) && !tty->raw) {
		if (ch == FUNC3(tty)) {
			FUNC5(tty);
			return;
		}
		else if (ch == FUNC2(tty)) {
			FUNC4(tty);
			return;
		}
	}

	FUNC6(tty, ch, TTY_NORMAL);
}