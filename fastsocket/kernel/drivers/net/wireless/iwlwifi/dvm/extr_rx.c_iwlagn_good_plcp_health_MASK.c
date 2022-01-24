#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct statistics_rx_phy {int /*<<< orphan*/  plcp_err; } ;
struct statistics_rx_ht_phy {int /*<<< orphan*/  plcp_err; } ;
struct TYPE_5__ {int /*<<< orphan*/  plcp_err; } ;
struct TYPE_4__ {int /*<<< orphan*/  plcp_err; } ;
struct TYPE_6__ {TYPE_2__ rx_ofdm_ht; TYPE_1__ rx_ofdm; } ;
struct iwl_priv {int plcp_delta_threshold; TYPE_3__ statistics; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_priv*,char*,...) ; 
 int IWL_MAX_PLCP_ERR_THRESHOLD_DISABLE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC2(struct iwl_priv *priv,
				 struct statistics_rx_phy *cur_ofdm,
				 struct statistics_rx_ht_phy *cur_ofdm_ht,
				 unsigned int msecs)
{
	int delta;
	int threshold = priv->plcp_delta_threshold;

	if (threshold == IWL_MAX_PLCP_ERR_THRESHOLD_DISABLE) {
		FUNC0(priv, "plcp_err check disabled\n");
		return true;
	}

	delta = FUNC1(cur_ofdm->plcp_err) -
		FUNC1(priv->statistics.rx_ofdm.plcp_err) +
		FUNC1(cur_ofdm_ht->plcp_err) -
		FUNC1(priv->statistics.rx_ofdm_ht.plcp_err);

	/* Can be negative if firmware reset statistics */
	if (delta <= 0)
		return true;

	if ((delta * 100 / msecs) > threshold) {
		FUNC0(priv,
				"plcp health threshold %u delta %d msecs %u\n",
				threshold, delta, msecs);
		return false;
	}

	return true;
}