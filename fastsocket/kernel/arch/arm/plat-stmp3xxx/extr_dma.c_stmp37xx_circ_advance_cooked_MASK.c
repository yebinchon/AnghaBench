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
struct stmp37xx_circ_dma_chain {unsigned int active_count; unsigned int active_index; unsigned int total_count; unsigned int cooked_count; int /*<<< orphan*/  bus; int /*<<< orphan*/  channel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 

unsigned FUNC2(struct stmp37xx_circ_dma_chain *chain)
{
	unsigned cooked;

	cooked = chain->active_count -
	  FUNC1(FUNC0(chain->channel, chain->bus));

	chain->active_count -= cooked;
	chain->active_index += cooked;
	chain->active_index %= chain->total_count;

	chain->cooked_count += cooked;

	return cooked;
}