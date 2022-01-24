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
typedef  int u64 ;

/* Variables and functions */
 int /*<<< orphan*/  fst_work_q_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC2(u64 * queue, int card_index)
{
	unsigned long flags;
	u64 mask;

	/*
	 * Grab the queue exclusively
	 */
	FUNC0(&fst_work_q_lock, flags);

	/*
	 * Making an entry in the queue is simply a matter of setting
	 * a bit for the card indicating that there is work to do in the
	 * bottom half for the card.  Note the limitation of 64 cards.
	 * That ought to be enough
	 */
	mask = 1 << card_index;
	*queue |= mask;
	FUNC1(&fst_work_q_lock, flags);
}