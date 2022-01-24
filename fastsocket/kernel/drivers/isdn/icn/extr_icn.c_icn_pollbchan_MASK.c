#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int flags; int /*<<< orphan*/  lock; int /*<<< orphan*/  rb_timer; } ;
typedef  TYPE_1__ icn_card ;

/* Variables and functions */
 int ICN_FLAGS_B1ACTIVE ; 
 int ICN_FLAGS_B2ACTIVE ; 
 int ICN_FLAGS_RBTIMER ; 
 scalar_t__ ICN_TIMER_BCREAD ; 
 int /*<<< orphan*/  FUNC0 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int,TYPE_1__*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC5(unsigned long data)
{
	icn_card *card = (icn_card *) data;
	unsigned long flags;

	if (card->flags & ICN_FLAGS_B1ACTIVE) {
		FUNC0(0, card);
		FUNC1(0, card);
	}
	if (card->flags & ICN_FLAGS_B2ACTIVE) {
		FUNC0(1, card);
		FUNC1(1, card);
	}
	if (card->flags & (ICN_FLAGS_B1ACTIVE | ICN_FLAGS_B2ACTIVE)) {
		/* schedule b-channel polling again */
		FUNC3(&card->lock, flags);
		FUNC2(&card->rb_timer, jiffies+ICN_TIMER_BCREAD);
		card->flags |= ICN_FLAGS_RBTIMER;
		FUNC4(&card->lock, flags);
	} else
		card->flags &= ~ICN_FLAGS_RBTIMER;
}