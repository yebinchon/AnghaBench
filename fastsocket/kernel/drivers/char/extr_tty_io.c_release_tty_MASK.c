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
struct tty_struct {int index; struct tty_struct* link; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_struct*) ; 

__attribute__((used)) static void FUNC2(struct tty_struct *tty, int idx)
{
	/* This should always be true but check for the moment */
	FUNC0(tty->index != idx);

	if (tty->link)
		FUNC1(tty->link);
	FUNC1(tty);
}