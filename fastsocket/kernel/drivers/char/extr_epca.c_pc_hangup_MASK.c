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
struct tty_struct {int dummy; } ;
struct channel {int /*<<< orphan*/  port; scalar_t__ event; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct channel*,struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct channel* FUNC4 (struct tty_struct*) ; 

__attribute__((used)) static void FUNC5(struct tty_struct *tty)
{
	struct channel *ch;

	/*
	 * verifyChannel returns the channel from the tty struct if it is
	 * valid. This serves as a sanity check.
	 */
	ch = FUNC4(tty);
	if (ch != NULL) {
		FUNC0(tty);
		FUNC2(tty);
		FUNC1(ch, tty);

		ch->event = 0;	/* FIXME: review locking of ch->event */
		FUNC3(&ch->port);
	}
}