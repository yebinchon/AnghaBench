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
typedef  int u16 ;
struct mmc_omap_slot {int /*<<< orphan*/  id; int /*<<< orphan*/  mmc; TYPE_1__* pdata; struct mmc_omap_host* host; } ;
struct mmc_omap_host {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* set_power ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CON ; 
 int FUNC0 (struct mmc_omap_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_omap_host*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC5(struct mmc_omap_slot *slot, int power_on,
				int vdd)
{
	struct mmc_omap_host *host;

	host = slot->host;

	if (slot->pdata->set_power != NULL)
		slot->pdata->set_power(FUNC3(slot->mmc), slot->id, power_on,
					vdd);

	if (FUNC2()) {
		u16 w;

		if (power_on) {
			w = FUNC0(host, CON);
			FUNC1(host, CON, w | (1 << 11));
		} else {
			w = FUNC0(host, CON);
			FUNC1(host, CON, w & ~(1 << 11));
		}
	}
}