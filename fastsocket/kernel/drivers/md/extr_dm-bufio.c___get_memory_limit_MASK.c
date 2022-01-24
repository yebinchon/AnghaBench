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
struct dm_bufio_client {unsigned long sectors_per_block_bits; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long DM_BUFIO_MIN_BUFFERS ; 
 unsigned long DM_BUFIO_WRITEBACK_PERCENT ; 
 unsigned long SECTOR_SHIFT ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  dm_bufio_cache_size ; 
 scalar_t__ dm_bufio_cache_size_latch ; 
 unsigned long dm_bufio_cache_size_per_client ; 
 int /*<<< orphan*/  dm_bufio_clients_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct dm_bufio_client *c,
			       unsigned long *threshold_buffers,
			       unsigned long *limit_buffers)
{
	unsigned long buffers;

	if (FUNC0(dm_bufio_cache_size) != dm_bufio_cache_size_latch) {
		FUNC2(&dm_bufio_clients_lock);
		FUNC1();
		FUNC3(&dm_bufio_clients_lock);
	}

	buffers = dm_bufio_cache_size_per_client >>
		  (c->sectors_per_block_bits + SECTOR_SHIFT);

	if (buffers < DM_BUFIO_MIN_BUFFERS)
		buffers = DM_BUFIO_MIN_BUFFERS;

	*limit_buffers = buffers;
	*threshold_buffers = buffers * DM_BUFIO_WRITEBACK_PERCENT / 100;
}