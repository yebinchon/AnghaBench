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
struct TYPE_2__ {int /*<<< orphan*/ * stat_arr; } ;
struct blkio_group {int /*<<< orphan*/  stats_lock; TYPE_1__ stats; } ;

/* Variables and functions */
 size_t BLKIO_STAT_MERGED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC3(struct blkio_group *blkg, bool direction,
					bool sync)
{
	unsigned long flags;

	FUNC1(&blkg->stats_lock, flags);
	FUNC0(blkg->stats.stat_arr[BLKIO_STAT_MERGED], 1, direction,
			sync);
	FUNC2(&blkg->stats_lock, flags);
}