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
struct sdio_func_tuple {struct sdio_func_tuple* next; } ;
struct mmc_card {struct sdio_func_tuple* tuples; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sdio_func_tuple*) ; 

void FUNC1(struct mmc_card *card)
{
	struct sdio_func_tuple *tuple, *victim;

	tuple = card->tuples;

	while (tuple) {
		victim = tuple;
		tuple = tuple->next;
		FUNC0(victim);
	}

	card->tuples = NULL;
}