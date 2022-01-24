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
typedef  int uint64_t ;
struct blkio_group_stats_cpu {int sectors; int /*<<< orphan*/  syncp; int /*<<< orphan*/ * stat_arr_cpu; } ;
struct blkio_group {int /*<<< orphan*/  stats_cpu; } ;

/* Variables and functions */
 size_t BLKIO_STAT_CPU_SERVICED ; 
 size_t BLKIO_STAT_CPU_SERVICE_BYTES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 struct blkio_group_stats_cpu* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct blkio_group *blkg,
				uint64_t bytes, bool direction, bool sync)
{
	struct blkio_group_stats_cpu *stats_cpu;
	unsigned long flags;

	/*
	 * Disabling interrupts to provide mutual exclusion between two
	 * writes on same cpu. It probably is not needed for 64bit. Not
	 * optimizing that case yet.
	 */
	FUNC2(flags);

	stats_cpu = FUNC3(blkg->stats_cpu);

	FUNC4(&stats_cpu->syncp);
	stats_cpu->sectors += bytes >> 9;
	FUNC0(stats_cpu->stat_arr_cpu[BLKIO_STAT_CPU_SERVICED],
			1, direction, sync);
	FUNC0(stats_cpu->stat_arr_cpu[BLKIO_STAT_CPU_SERVICE_BYTES],
			bytes, direction, sync);
	FUNC5(&stats_cpu->syncp);
	FUNC1(flags);
}