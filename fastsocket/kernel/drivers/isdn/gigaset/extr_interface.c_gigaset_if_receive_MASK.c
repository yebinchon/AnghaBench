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
struct cardstate {int /*<<< orphan*/  lock; struct tty_struct* tty; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_ANY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct tty_struct*,unsigned char*,size_t) ; 

void FUNC5(struct cardstate *cs,
			unsigned char *buffer, size_t len)
{
	unsigned long flags;
	struct tty_struct *tty;

	FUNC1(&cs->lock, flags);
	if ((tty = cs->tty) == NULL)
		FUNC0(DEBUG_ANY, "receive on closed device");
	else {
		FUNC4(tty, buffer, len);
		FUNC3(tty);
	}
	FUNC2(&cs->lock, flags);
}