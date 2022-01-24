#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int max_stations; } ;
struct il_priv {int /*<<< orphan*/  sta_lock; TYPE_1__* stations; TYPE_2__ hw_params; } ;
struct TYPE_3__ {int used; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int IL_STA_UCODE_ACTIVE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void
FUNC3(struct il_priv *il)
{
	int i;
	unsigned long flags_spin;
	bool cleared = false;

	FUNC0("Clearing ucode stations in driver\n");

	FUNC1(&il->sta_lock, flags_spin);
	for (i = 0; i < il->hw_params.max_stations; i++) {
		if (il->stations[i].used & IL_STA_UCODE_ACTIVE) {
			FUNC0("Clearing ucode active for station %d\n", i);
			il->stations[i].used &= ~IL_STA_UCODE_ACTIVE;
			cleared = true;
		}
	}
	FUNC2(&il->sta_lock, flags_spin);

	if (!cleared)
		FUNC0("No active stations found to be cleared\n");
}