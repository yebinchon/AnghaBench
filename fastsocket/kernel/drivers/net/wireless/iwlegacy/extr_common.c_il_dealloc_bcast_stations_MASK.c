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
struct TYPE_3__ {int max_stations; } ;
struct il_priv {scalar_t__ num_stations; int /*<<< orphan*/  sta_lock; TYPE_2__* stations; TYPE_1__ hw_params; } ;
struct TYPE_4__ {int used; int /*<<< orphan*/ * lq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int IL_STA_BCAST ; 
 int IL_STA_UCODE_ACTIVE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void
FUNC4(struct il_priv *il)
{
	unsigned long flags;
	int i;

	FUNC2(&il->sta_lock, flags);
	for (i = 0; i < il->hw_params.max_stations; i++) {
		if (!(il->stations[i].used & IL_STA_BCAST))
			continue;

		il->stations[i].used &= ~IL_STA_UCODE_ACTIVE;
		il->num_stations--;
		FUNC0(il->num_stations < 0);
		FUNC1(il->stations[i].lq);
		il->stations[i].lq = NULL;
	}
	FUNC3(&il->sta_lock, flags);
}