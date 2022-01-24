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
struct tty_struct {int /*<<< orphan*/  echo_lock; } ;

/* Variables and functions */
 unsigned char ECHO_OP_START ; 
 scalar_t__ FUNC0 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char,struct tty_struct*) ; 
 scalar_t__ FUNC2 (unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(unsigned char c, struct tty_struct *tty)
{
	FUNC3(&tty->echo_lock);

	if (c == ECHO_OP_START) {
		FUNC1(ECHO_OP_START, tty);
		FUNC1(ECHO_OP_START, tty);
	} else {
		if (FUNC0(tty) && FUNC2(c) && c != '\t')
			FUNC1(ECHO_OP_START, tty);
		FUNC1(c, tty);
	}

	FUNC4(&tty->echo_lock);
}