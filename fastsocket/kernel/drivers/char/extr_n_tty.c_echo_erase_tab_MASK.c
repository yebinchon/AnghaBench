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
 unsigned int ECHO_OP_ERASE_TAB ; 
 unsigned int ECHO_OP_START ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(unsigned int num_chars, int after_tab,
			   struct tty_struct *tty)
{
	FUNC1(&tty->echo_lock);

	FUNC0(ECHO_OP_START, tty);
	FUNC0(ECHO_OP_ERASE_TAB, tty);

	/* We only need to know this modulo 8 (tab spacing) */
	num_chars &= 7;

	/* Set the high bit as a flag if num_chars is after a previous tab */
	if (after_tab)
		num_chars |= 0x80;

	FUNC0(num_chars, tty);

	FUNC2(&tty->echo_lock);
}