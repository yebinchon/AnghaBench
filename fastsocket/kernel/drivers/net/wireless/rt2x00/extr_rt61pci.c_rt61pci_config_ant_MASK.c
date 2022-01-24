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
typedef  int /*<<< orphan*/  u32 ;
struct rt2x00_dev {scalar_t__ curr_band; int /*<<< orphan*/  cap_flags; } ;
struct antenna_setup {scalar_t__ rx; scalar_t__ tx; } ;
struct antenna_sel {int /*<<< orphan*/ * value; int /*<<< orphan*/  word; } ;

/* Variables and functions */
 scalar_t__ ANTENNA_SW_DIVERSITY ; 
 unsigned int FUNC0 (struct antenna_sel*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  CAPABILITY_DOUBLE_ANTENNA ; 
 int /*<<< orphan*/  CAPABILITY_EXTERNAL_LNA_A ; 
 int /*<<< orphan*/  CAPABILITY_EXTERNAL_LNA_BG ; 
 scalar_t__ IEEE80211_BAND_2GHZ ; 
 scalar_t__ IEEE80211_BAND_5GHZ ; 
 int /*<<< orphan*/  PHY_CSR0 ; 
 int /*<<< orphan*/  PHY_CSR0_PA_PE_A ; 
 int /*<<< orphan*/  PHY_CSR0_PA_PE_BG ; 
 int /*<<< orphan*/  RF2527 ; 
 int /*<<< orphan*/  RF2529 ; 
 int /*<<< orphan*/  RF5225 ; 
 int /*<<< orphan*/  RF5325 ; 
 struct antenna_sel* antenna_sel_a ; 
 struct antenna_sel* antenna_sel_bg ; 
 scalar_t__ FUNC2 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct rt2x00_dev*,struct antenna_setup*) ; 
 int /*<<< orphan*/  FUNC8 (struct rt2x00_dev*,struct antenna_setup*) ; 
 int /*<<< orphan*/  FUNC9 (struct rt2x00_dev*,struct antenna_setup*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct rt2x00_dev *rt2x00dev,
			       struct antenna_setup *ant)
{
	const struct antenna_sel *sel;
	unsigned int lna;
	unsigned int i;
	u32 reg;

	/*
	 * We should never come here because rt2x00lib is supposed
	 * to catch this and send us the correct antenna explicitely.
	 */
	FUNC1(ant->rx == ANTENNA_SW_DIVERSITY ||
	       ant->tx == ANTENNA_SW_DIVERSITY);

	if (rt2x00dev->curr_band == IEEE80211_BAND_5GHZ) {
		sel = antenna_sel_a;
		lna = FUNC10(CAPABILITY_EXTERNAL_LNA_A, &rt2x00dev->cap_flags);
	} else {
		sel = antenna_sel_bg;
		lna = FUNC10(CAPABILITY_EXTERNAL_LNA_BG, &rt2x00dev->cap_flags);
	}

	for (i = 0; i < FUNC0(antenna_sel_a); i++)
		FUNC6(rt2x00dev, sel[i].word, sel[i].value[lna]);

	FUNC4(rt2x00dev, PHY_CSR0, &reg);

	FUNC3(&reg, PHY_CSR0_PA_PE_BG,
			   rt2x00dev->curr_band == IEEE80211_BAND_2GHZ);
	FUNC3(&reg, PHY_CSR0_PA_PE_A,
			   rt2x00dev->curr_band == IEEE80211_BAND_5GHZ);

	FUNC5(rt2x00dev, PHY_CSR0, reg);

	if (FUNC2(rt2x00dev, RF5225) || FUNC2(rt2x00dev, RF5325))
		FUNC9(rt2x00dev, ant);
	else if (FUNC2(rt2x00dev, RF2527))
		FUNC8(rt2x00dev, ant);
	else if (FUNC2(rt2x00dev, RF2529)) {
		if (FUNC10(CAPABILITY_DOUBLE_ANTENNA, &rt2x00dev->cap_flags))
			FUNC8(rt2x00dev, ant);
		else
			FUNC7(rt2x00dev, ant);
	}
}