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
struct stmp37xx_circ_dma_chain {unsigned int cooked_count; int /*<<< orphan*/  free_count; int /*<<< orphan*/  total_count; int /*<<< orphan*/  cooked_index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

void FUNC1(struct stmp37xx_circ_dma_chain *chain,
		unsigned count)
{
	FUNC0(chain->cooked_count < count);

	chain->cooked_count -= count;
	chain->cooked_index += count;
	chain->cooked_index %= chain->total_count;
	chain->free_count += count;
}