#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct stmp3xxx_dma_descriptor {int /*<<< orphan*/  handle; TYPE_1__* command; struct stmp3xxx_dma_descriptor* next_descr; } ;
struct stmp37xx_circ_dma_chain {unsigned int total_count; unsigned int free_count; int /*<<< orphan*/  channel; int /*<<< orphan*/  bus; scalar_t__ cooked_count; scalar_t__ active_count; scalar_t__ cooked_index; scalar_t__ active_index; scalar_t__ free_index; struct stmp3xxx_dma_descriptor* chain; } ;
struct TYPE_2__ {int /*<<< orphan*/  next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int,struct stmp3xxx_dma_descriptor*) ; 
 int /*<<< orphan*/  FUNC4 (int,struct stmp3xxx_dma_descriptor*) ; 

int FUNC5(int ch, struct stmp37xx_circ_dma_chain *chain,
			    struct stmp3xxx_dma_descriptor descriptors[],
			    unsigned items)
{
	int i;
	int err = 0;

	if (items == 0)
		return err;

	for (i = 0; i < items; i++) {
		err = FUNC3(ch, &descriptors[i]);
		if (err) {
			FUNC2(err);
			/*
			 * Couldn't allocate the whole chain.
			 * deallocate what has been allocated
			 */
			if (i) {
				do {
					FUNC4(ch,
								  &descriptors
								  [i]);
				} while (i-- > 0);
			}
			return err;
		}

		/* link them! */
		if (i > 0) {
			descriptors[i - 1].next_descr = &descriptors[i];
			descriptors[i - 1].command->next =
						descriptors[i].handle;
		}
	}

	/* make list circular */
	descriptors[items - 1].next_descr = &descriptors[0];
	descriptors[items - 1].command->next = descriptors[0].handle;

	chain->total_count = items;
	chain->chain = descriptors;
	chain->free_index = 0;
	chain->active_index = 0;
	chain->cooked_index = 0;
	chain->free_count = items;
	chain->active_count = 0;
	chain->cooked_count = 0;
	chain->bus = FUNC0(ch);
	chain->channel = FUNC1(ch);
	return err;
}