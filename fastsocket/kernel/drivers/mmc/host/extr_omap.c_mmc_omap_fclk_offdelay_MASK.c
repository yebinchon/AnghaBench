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
struct mmc_omap_slot {int fclk_freq; TYPE_1__* host; } ;
struct TYPE_2__ {scalar_t__ fclk_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static void FUNC1(struct mmc_omap_slot *slot)
{
	unsigned long tick_ns;

	if (slot != NULL && slot->host->fclk_enabled && slot->fclk_freq > 0) {
		tick_ns = (1000000000 + slot->fclk_freq - 1) / slot->fclk_freq;
		FUNC0(8 * tick_ns);
	}
}