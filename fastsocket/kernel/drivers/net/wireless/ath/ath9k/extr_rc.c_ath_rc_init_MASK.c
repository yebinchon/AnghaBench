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
typedef  size_t u8 ;
struct ath_softc {int /*<<< orphan*/  sc_ah; } ;
struct ath_rateset {int /*<<< orphan*/  rs_nrates; } ;
struct ath_rate_table {int /*<<< orphan*/  initial_ratemax; } ;
struct ath_rate_priv {size_t rate_table_size; size_t* valid_phy_ratecnt; int ht_cap; size_t max_valid_rate; scalar_t__* valid_rate_index; scalar_t__ rate_max_phy; scalar_t__** valid_phy_rateidx; scalar_t__* per; struct ath_rateset neg_rates; struct ath_rate_table* rate_table; } ;
struct ath_common {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG ; 
 size_t RATE_TABLE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int WLAN_RC_HT_FLAG ; 
 size_t WLAN_RC_PHY_MAX ; 
 struct ath_common* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_common*,int /*<<< orphan*/ ,char*,int) ; 
 size_t FUNC3 (struct ath_rate_priv*) ; 
 size_t FUNC4 (struct ath_rate_priv*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_rate_priv*) ; 
 int /*<<< orphan*/  FUNC6 (size_t,int /*<<< orphan*/ ,int) ; 
 size_t FUNC7 (size_t,size_t) ; 

__attribute__((used)) static void FUNC8(struct ath_softc *sc,
			struct ath_rate_priv *ath_rc_priv)
{
	const struct ath_rate_table *rate_table = ath_rc_priv->rate_table;
	struct ath_rateset *rateset = &ath_rc_priv->neg_rates;
	struct ath_common *common = FUNC1(sc->sc_ah);
	u8 i, j, k, hi = 0, hthi = 0;

	ath_rc_priv->rate_table_size = RATE_TABLE_SIZE;

	for (i = 0 ; i < ath_rc_priv->rate_table_size; i++) {
		ath_rc_priv->per[i] = 0;
		ath_rc_priv->valid_rate_index[i] = 0;
	}

	for (i = 0; i < WLAN_RC_PHY_MAX; i++) {
		for (j = 0; j < RATE_TABLE_SIZE; j++)
			ath_rc_priv->valid_phy_rateidx[i][j] = 0;
		ath_rc_priv->valid_phy_ratecnt[i] = 0;
	}

	if (!rateset->rs_nrates) {
		hi = FUNC3(ath_rc_priv);
	} else {
		hi = FUNC4(ath_rc_priv, true);

		if (ath_rc_priv->ht_cap & WLAN_RC_HT_FLAG)
			hthi = FUNC4(ath_rc_priv, false);

		hi = FUNC7(hi, hthi);
	}

	ath_rc_priv->rate_table_size = hi + 1;
	ath_rc_priv->rate_max_phy = 0;
	FUNC0(ath_rc_priv->rate_table_size > RATE_TABLE_SIZE);

	for (i = 0, k = 0; i < WLAN_RC_PHY_MAX; i++) {
		for (j = 0; j < ath_rc_priv->valid_phy_ratecnt[i]; j++) {
			ath_rc_priv->valid_rate_index[k++] =
				ath_rc_priv->valid_phy_rateidx[i][j];
		}

		if (!FUNC6(i, rate_table->initial_ratemax, 1) ||
		    !ath_rc_priv->valid_phy_ratecnt[i])
			continue;

		ath_rc_priv->rate_max_phy = ath_rc_priv->valid_phy_rateidx[i][j-1];
	}
	FUNC0(ath_rc_priv->rate_table_size > RATE_TABLE_SIZE);
	FUNC0(k > RATE_TABLE_SIZE);

	ath_rc_priv->max_valid_rate = k;
	FUNC5(ath_rc_priv);
	ath_rc_priv->rate_max_phy = (k > 4) ?
		ath_rc_priv->valid_rate_index[k-4] :
		ath_rc_priv->valid_rate_index[k-1];

	FUNC2(common, CONFIG, "RC Initialized with capabilities: 0x%x\n",
		ath_rc_priv->ht_cap);
}