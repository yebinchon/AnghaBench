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
struct stmp37xx_circ_dma_chain {int total_count; int /*<<< orphan*/ * chain; int /*<<< orphan*/  bus; int /*<<< orphan*/  channel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC2(struct stmp37xx_circ_dma_chain *chain)
{
	int i;

	for (i = 0; i < chain->total_count; i++)
		FUNC1(
			FUNC0(chain->channel, chain->bus),
			&chain->chain[i]);
}