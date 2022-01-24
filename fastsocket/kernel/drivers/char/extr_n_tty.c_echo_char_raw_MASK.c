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
 int /*<<< orphan*/  FUNC0 (unsigned char,struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(unsigned char c, struct tty_struct *tty)
{
	FUNC1(&tty->echo_lock);

	if (c == ECHO_OP_START) {
		FUNC0(ECHO_OP_START, tty);
		FUNC0(ECHO_OP_START, tty);
	} else {
		FUNC0(c, tty);
	}

	FUNC2(&tty->echo_lock);
}