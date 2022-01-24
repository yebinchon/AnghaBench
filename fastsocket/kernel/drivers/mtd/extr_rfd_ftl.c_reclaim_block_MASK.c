#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u_long ;
struct TYPE_4__ {TYPE_3__* mtd; } ;
struct partition {int block_size; int total_blocks; int reserved_block; int data_sectors_per_block; int current_block; TYPE_2__* blocks; TYPE_1__ mbd; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* sync ) (TYPE_3__*) ;} ;
struct TYPE_5__ {int used_sectors; scalar_t__ free_sectors; scalar_t__ erases; } ;

/* Variables and functions */
 int ENOSPC ; 
 int FUNC0 (struct partition*,int) ; 
 int FUNC1 (struct partition*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC4(struct partition *part, u_long *old_sector)
{
	int block, best_block, score, old_sector_block;
	int rc;

	/* we have a race if sync doesn't exist */
	if (part->mbd.mtd->sync)
		part->mbd.mtd->sync(part->mbd.mtd);

	score = 0x7fffffff; /* MAX_INT */
	best_block = -1;
	if (*old_sector != -1)
		old_sector_block = *old_sector / part->block_size;
	else
		old_sector_block = -1;

	for (block=0; block<part->total_blocks; block++) {
		int this_score;

		if (block == part->reserved_block)
			continue;

		/*
		 * Postpone reclaiming if there is a free sector as
		 * more removed sectors is more efficient (have to move
		 * less).
		 */
		if (part->blocks[block].free_sectors)
			return 0;

		this_score = part->blocks[block].used_sectors;

		if (block == old_sector_block)
			this_score--;
		else {
			/* no point in moving a full block */
			if (part->blocks[block].used_sectors ==
					part->data_sectors_per_block)
				continue;
		}

		this_score += part->blocks[block].erases;

		if (this_score < score) {
			best_block = block;
			score = this_score;
		}
	}

	if (best_block == -1)
		return -ENOSPC;

	part->current_block = -1;
	part->reserved_block = best_block;

	FUNC2("reclaim_block: reclaiming block #%d with %d used "
		 "%d free sectors\n", best_block,
		 part->blocks[best_block].used_sectors,
		 part->blocks[best_block].free_sectors);

	if (part->blocks[best_block].used_sectors)
		rc = FUNC1(part, best_block, old_sector);
	else
		rc = FUNC0(part, best_block);

	return rc;
}