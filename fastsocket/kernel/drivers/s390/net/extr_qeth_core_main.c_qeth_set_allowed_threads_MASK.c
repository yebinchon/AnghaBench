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
struct qeth_card {unsigned long thread_allowed_mask; unsigned long thread_start_mask; int /*<<< orphan*/  wait_q; int /*<<< orphan*/  thread_mask_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct qeth_card *card, unsigned long threads,
			 int clear_start_mask)
{
	unsigned long flags;

	FUNC0(&card->thread_mask_lock, flags);
	card->thread_allowed_mask = threads;
	if (clear_start_mask)
		card->thread_start_mask &= threads;
	FUNC1(&card->thread_mask_lock, flags);
	FUNC2(&card->wait_q);
}