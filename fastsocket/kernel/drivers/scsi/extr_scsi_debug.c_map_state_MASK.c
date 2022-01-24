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
typedef  unsigned int sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  map_size ; 
 int /*<<< orphan*/  map_storep ; 
 unsigned int scsi_debug_unmap_alignment ; 
 unsigned int scsi_debug_unmap_granularity ; 
 unsigned int FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC4(sector_t lba, unsigned int *num)
{
	unsigned int granularity, alignment, mapped;
	sector_t block, next, end;

	granularity = scsi_debug_unmap_granularity;
	alignment = granularity - scsi_debug_unmap_alignment;
	block = lba + alignment;
	FUNC0(block, granularity);

	mapped = FUNC3(block, map_storep);

	if (mapped)
		next = FUNC2(map_storep, map_size, block);
	else
		next = FUNC1(map_storep, map_size, block);

	end = next * granularity - scsi_debug_unmap_alignment;
	*num = end - lba;

	return mapped;
}