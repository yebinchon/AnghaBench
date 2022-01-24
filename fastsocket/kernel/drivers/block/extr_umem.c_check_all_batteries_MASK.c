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
struct cardinfo {int flags; scalar_t__ Active; int check_batteries; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int UM_FLAG_NO_BATT ; 
 struct cardinfo* cards ; 
 int /*<<< orphan*/  FUNC0 (struct cardinfo*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int num_cards ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(unsigned long ptr)
{
	int i;

	for (i = 0; i < num_cards; i++)
		if (!(cards[i].flags & UM_FLAG_NO_BATT)) {
			struct cardinfo *card = &cards[i];
			FUNC2(&card->lock);
			if (card->Active >= 0)
				card->check_batteries = 1;
			else
				FUNC0(card);
			FUNC3(&card->lock);
		}

	FUNC1();
}