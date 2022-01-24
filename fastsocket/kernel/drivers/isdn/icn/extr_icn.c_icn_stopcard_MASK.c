#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  driver; int /*<<< orphan*/  command; } ;
typedef  TYPE_2__ isdn_ctrl ;
struct TYPE_6__ {int /*<<< orphan*/  (* statcallb ) (TYPE_2__*) ;} ;
struct TYPE_8__ {int flags; int /*<<< orphan*/  lock; struct TYPE_8__* other; scalar_t__ doubleS0; TYPE_1__ interface; int /*<<< orphan*/  myid; int /*<<< orphan*/  rb_timer; int /*<<< orphan*/  st_timer; } ;
typedef  TYPE_3__ icn_card ;

/* Variables and functions */
 int ICN_FLAGS_RUNNING ; 
 int /*<<< orphan*/  ISDN_STAT_STOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC4(icn_card * card)
{
	unsigned long flags;
	isdn_ctrl cmd;

	FUNC1(&card->lock, flags);
	if (card->flags & ICN_FLAGS_RUNNING) {
		card->flags &= ~ICN_FLAGS_RUNNING;
		FUNC0(&card->st_timer);
		FUNC0(&card->rb_timer);
		FUNC2(&card->lock, flags);
		cmd.command = ISDN_STAT_STOP;
		cmd.driver = card->myid;
		card->interface.statcallb(&cmd);
		if (card->doubleS0)
			FUNC4(card->other);
	} else
		FUNC2(&card->lock, flags);
}