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
struct fw_card {int /*<<< orphan*/  lock; int /*<<< orphan*/ * local_node; int /*<<< orphan*/  color; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fw_card*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  report_lost_node ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC3(struct fw_card *card)
{
	unsigned long flags;

	FUNC1(&card->lock, flags);
	card->color++;
	if (card->local_node != NULL)
		FUNC0(card, card->local_node, report_lost_node);
	card->local_node = NULL;
	FUNC2(&card->lock, flags);
}