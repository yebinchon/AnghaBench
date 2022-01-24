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
struct tty_struct {int /*<<< orphan*/  read_wait; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct tty_struct*) ; 
 scalar_t__ FUNC1 (struct tty_struct*) ; 
 scalar_t__ FUNC2 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char,struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC5(struct tty_struct *tty,
					      unsigned char c)
{
	if (FUNC0(tty))
		return;
	if (FUNC2(tty)) {
		FUNC3('\377', tty);
		FUNC3('\0', tty);
		FUNC3(c, tty);
	} else	if (FUNC1(tty))
		FUNC3('\0', tty);
	else
		FUNC3(c, tty);
	FUNC4(&tty->read_wait);
}