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
struct efx_tx_queue {unsigned int write_count; int /*<<< orphan*/  empty_read_count; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int EFX_EMPTY_COUNT_VALID ; 

__attribute__((used)) static inline bool
FUNC1(struct efx_tx_queue *tx_queue, unsigned int write_count)
{
	unsigned empty_read_count = FUNC0(tx_queue->empty_read_count);

	if (empty_read_count == 0)
		return false;

	tx_queue->empty_read_count = 0;
	return ((empty_read_count ^ write_count) & ~EFX_EMPTY_COUNT_VALID) == 0
		&& tx_queue->write_count - write_count == 1;
}