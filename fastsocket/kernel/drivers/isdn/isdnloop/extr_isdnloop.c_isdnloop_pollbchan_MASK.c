#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ expires; } ;
struct TYPE_4__ {int flags; int /*<<< orphan*/  isdnloop_lock; TYPE_3__ rb_timer; } ;
typedef  TYPE_1__ isdnloop_card ;

/* Variables and functions */
 int ISDNLOOP_FLAGS_B1ACTIVE ; 
 int ISDNLOOP_FLAGS_B2ACTIVE ; 
 int ISDNLOOP_FLAGS_RBTIMER ; 
 scalar_t__ ISDNLOOP_TIMER_BCREAD ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC4(unsigned long data)
{
	isdnloop_card *card = (isdnloop_card *) data;
	unsigned long flags;

	if (card->flags & ISDNLOOP_FLAGS_B1ACTIVE)
		FUNC1(card, 0);
	if (card->flags & ISDNLOOP_FLAGS_B2ACTIVE)
		FUNC1(card, 1);
	if (card->flags & (ISDNLOOP_FLAGS_B1ACTIVE | ISDNLOOP_FLAGS_B2ACTIVE)) {
		/* schedule b-channel polling again */
		FUNC2(&card->isdnloop_lock, flags);
		card->rb_timer.expires = jiffies + ISDNLOOP_TIMER_BCREAD;
		FUNC0(&card->rb_timer);
		card->flags |= ISDNLOOP_FLAGS_RBTIMER;
		FUNC3(&card->isdnloop_lock, flags);
	} else
		card->flags &= ~ISDNLOOP_FLAGS_RBTIMER;
}