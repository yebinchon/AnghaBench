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
struct iwl_priv {int /*<<< orphan*/  ucode_trace; int /*<<< orphan*/  statistics_periodic; int /*<<< orphan*/  hw_roc_disable_work; int /*<<< orphan*/  bt_runtime_config; int /*<<< orphan*/  bt_full_concurrency; int /*<<< orphan*/  beacon_update; int /*<<< orphan*/  run_time_calib_work; TYPE_1__* cfg; } ;
struct TYPE_2__ {scalar_t__ bt_params; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_priv*) ; 

void FUNC5(struct iwl_priv *priv)
{
	if (priv->cfg->bt_params)
		FUNC4(priv);

	FUNC1(&priv->run_time_calib_work);
	FUNC1(&priv->beacon_update);

	FUNC3(priv);

	FUNC1(&priv->bt_full_concurrency);
	FUNC1(&priv->bt_runtime_config);
	FUNC0(&priv->hw_roc_disable_work);

	FUNC2(&priv->statistics_periodic);
	FUNC2(&priv->ucode_trace);
}