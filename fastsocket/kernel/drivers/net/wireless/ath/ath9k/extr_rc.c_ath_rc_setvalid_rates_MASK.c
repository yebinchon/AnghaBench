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
typedef  size_t u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct ath_rateset {size_t rs_nrates; size_t* rs_rates; } ;
struct ath_rate_table {size_t rate_cnt; TYPE_1__* info; } ;
struct ath_rate_priv {size_t ht_cap; size_t* valid_phy_ratecnt; size_t** valid_phy_rateidx; int* valid_rate_index; struct ath_rateset neg_ht_rates; struct ath_rateset neg_rates; struct ath_rate_table* rate_table; } ;
struct TYPE_2__ {size_t phy; size_t dot11rate; int /*<<< orphan*/  rate_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t,size_t,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (size_t,size_t,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (size_t,size_t,int /*<<< orphan*/ ) ; 
 size_t FUNC3 (size_t,size_t) ; 

__attribute__((used)) static u8 FUNC4(struct ath_rate_priv *ath_rc_priv, bool legacy)
{
	const struct ath_rate_table *rate_table = ath_rc_priv->rate_table;
	struct ath_rateset *rateset;
	u32 phy, capflag = ath_rc_priv->ht_cap;
	u16 rate_flags;
	u8 i, j, hi = 0, rate, dot11rate, valid_rate_count;

	if (legacy)
		rateset = &ath_rc_priv->neg_rates;
	else
		rateset = &ath_rc_priv->neg_ht_rates;

	for (i = 0; i < rateset->rs_nrates; i++) {
		for (j = 0; j < rate_table->rate_cnt; j++) {
			phy = rate_table->info[j].phy;
			rate_flags = rate_table->info[j].rate_flags;
			rate = rateset->rs_rates[i];
			dot11rate = rate_table->info[j].dot11rate;

			if (legacy &&
			    !FUNC1(rate, dot11rate,
						 rate_flags, phy, capflag))
				continue;

			if (!legacy &&
			    !FUNC0(rate, dot11rate,
					     rate_flags, phy, capflag))
				continue;

			if (!FUNC2(phy, capflag, 0))
				continue;

			valid_rate_count = ath_rc_priv->valid_phy_ratecnt[phy];
			ath_rc_priv->valid_phy_rateidx[phy][valid_rate_count] = j;
			ath_rc_priv->valid_phy_ratecnt[phy] += 1;
			ath_rc_priv->valid_rate_index[j] = true;
			hi = FUNC3(hi, j);
		}
	}

	return hi;
}