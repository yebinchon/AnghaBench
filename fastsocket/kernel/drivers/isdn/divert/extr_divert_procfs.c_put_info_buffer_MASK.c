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
struct divert_info {scalar_t__ usage_cnt; struct divert_info* next; int /*<<< orphan*/  info_start; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct divert_info* divert_info_head ; 
 int /*<<< orphan*/  divert_info_lock ; 
 struct divert_info* divert_info_tail ; 
 scalar_t__ if_used ; 
 int /*<<< orphan*/  FUNC0 (struct divert_info*) ; 
 struct divert_info* FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rd_queue ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void
FUNC7(char *cp)
{
	struct divert_info *ib;
	unsigned long flags;

	if (if_used <= 0)
		return;
	if (!cp)
		return;
	if (!*cp)
		return;
	if (!(ib = FUNC1(sizeof(struct divert_info) + FUNC5(cp), GFP_ATOMIC)))
		 return;	/* no memory */
	FUNC4(ib->info_start, cp);	/* set output string */
	ib->next = NULL;
	FUNC2( &divert_info_lock, flags );
	ib->usage_cnt = if_used;
	if (!divert_info_head)
		divert_info_head = ib;	/* new head */
	else
		divert_info_tail->next = ib;	/* follows existing messages */
	divert_info_tail = ib;	/* new tail */

	/* delete old entrys */
	while (divert_info_head->next) {
		if ((divert_info_head->usage_cnt <= 0) &&
		    (divert_info_head->next->usage_cnt <= 0)) {
			ib = divert_info_head;
			divert_info_head = divert_info_head->next;
			FUNC0(ib);
		} else
			break;
	}			/* divert_info_head->next */
	FUNC3( &divert_info_lock, flags );
	FUNC6(&(rd_queue));
}