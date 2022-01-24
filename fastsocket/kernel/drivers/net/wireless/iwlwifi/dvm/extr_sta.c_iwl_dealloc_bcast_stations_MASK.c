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
struct iwl_priv {scalar_t__ num_stations; int /*<<< orphan*/  sta_lock; TYPE_1__* stations; } ;
struct TYPE_2__ {int used; int /*<<< orphan*/ * lq; } ;

/* Variables and functions */
 int IWLAGN_STATION_COUNT ; 
 int IWL_STA_BCAST ; 
 int IWL_STA_UCODE_ACTIVE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct iwl_priv *priv)
{
	int i;

	FUNC2(&priv->sta_lock);
	for (i = 0; i < IWLAGN_STATION_COUNT; i++) {
		if (!(priv->stations[i].used & IWL_STA_BCAST))
			continue;

		priv->stations[i].used &= ~IWL_STA_UCODE_ACTIVE;
		priv->num_stations--;
		if (FUNC0(priv->num_stations < 0))
			priv->num_stations = 0;
		FUNC1(priv->stations[i].lq);
		priv->stations[i].lq = NULL;
	}
	FUNC3(&priv->sta_lock);
}