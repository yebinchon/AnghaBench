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
struct channel {int statusflags; } ;

/* Variables and functions */
 int EMPTYWAIT ; 
 int TXBUSY ; 
 int /*<<< orphan*/  epca_lock ; 
 int /*<<< orphan*/  FUNC0 (struct tty_struct*,struct channel*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct channel* FUNC3 (struct tty_struct*) ; 

__attribute__((used)) static void FUNC4(struct tty_struct *tty)
{
	struct channel *ch;
	/*
	 * verifyChannel returns the channel from the tty struct if it is
	 * valid. This serves as a sanity check.
	 */
	ch = FUNC3(tty);
	if (ch != NULL) {
		unsigned long flags;
		FUNC1(&epca_lock, flags);
		/*
		 * If not already set and the transmitter is busy setup an
		 * event to indicate when the transmit empties.
		 */
		if ((ch->statusflags & TXBUSY) &&
				!(ch->statusflags & EMPTYWAIT))
			FUNC0(tty, ch);
		FUNC2(&epca_lock, flags);
	}
}