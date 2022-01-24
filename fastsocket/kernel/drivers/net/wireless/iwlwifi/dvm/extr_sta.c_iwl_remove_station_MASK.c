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
typedef  size_t u8 ;
struct iwl_priv {scalar_t__ num_stations; int /*<<< orphan*/  sta_lock; TYPE_1__* stations; int /*<<< orphan*/ ** tid_data; } ;
struct TYPE_2__ {int used; int /*<<< orphan*/ * lq; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_priv*,char*,size_t const,size_t const*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_priv*,char*,size_t const*) ; 
 size_t const IWL_INVALID_STATION ; 
 size_t IWL_MAX_TID_COUNT ; 
 int IWL_STA_DRIVER_ACTIVE ; 
 int IWL_STA_LOCAL ; 
 int IWL_STA_UCODE_ACTIVE ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_priv*) ; 
 int FUNC4 (struct iwl_priv*,size_t const*,size_t const,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct iwl_priv *priv, const u8 sta_id,
		       const u8 *addr)
{
	u8 tid;

	if (!FUNC3(priv)) {
		FUNC1(priv,
			"Unable to remove station %pM, device not ready.\n",
			addr);
		/*
		 * It is typical for stations to be removed when we are
		 * going down. Return success since device will be down
		 * soon anyway
		 */
		return 0;
	}

	FUNC0(priv, "Removing STA from driver:%d  %pM\n",
			sta_id, addr);

	if (FUNC2(sta_id == IWL_INVALID_STATION))
		return -EINVAL;

	FUNC7(&priv->sta_lock);

	if (!(priv->stations[sta_id].used & IWL_STA_DRIVER_ACTIVE)) {
		FUNC1(priv, "Removing %pM but non DRIVER active\n",
				addr);
		goto out_err;
	}

	if (!(priv->stations[sta_id].used & IWL_STA_UCODE_ACTIVE)) {
		FUNC1(priv, "Removing %pM but non UCODE active\n",
				addr);
		goto out_err;
	}

	if (priv->stations[sta_id].used & IWL_STA_LOCAL) {
		FUNC5(priv->stations[sta_id].lq);
		priv->stations[sta_id].lq = NULL;
	}

	for (tid = 0; tid < IWL_MAX_TID_COUNT; tid++)
		FUNC6(&priv->tid_data[sta_id][tid], 0,
			sizeof(priv->tid_data[sta_id][tid]));

	priv->stations[sta_id].used &= ~IWL_STA_DRIVER_ACTIVE;

	priv->num_stations--;

	if (FUNC2(priv->num_stations < 0))
		priv->num_stations = 0;

	FUNC8(&priv->sta_lock);

	return FUNC4(priv, addr, sta_id, false);
out_err:
	FUNC8(&priv->sta_lock);
	return -EINVAL;
}