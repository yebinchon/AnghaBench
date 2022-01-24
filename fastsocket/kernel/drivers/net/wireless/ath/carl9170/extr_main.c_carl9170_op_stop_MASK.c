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
struct ieee80211_hw {struct ar9170* priv; } ;
struct ar9170 {int /*<<< orphan*/  mutex; int /*<<< orphan*/  beacon_iter; int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR9170_MAC_REG_DMA_TRIGGER ; 
 int /*<<< orphan*/  CARL9170_IDLE ; 
 int /*<<< orphan*/  CARL9170_STARTED ; 
 scalar_t__ FUNC0 (struct ar9170*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ar9170*) ; 
 int /*<<< orphan*/  FUNC3 (struct ar9170*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ar9170*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ar9170*) ; 
 int /*<<< orphan*/  FUNC6 (struct ar9170*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ar9170*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct ieee80211_hw *hw)
{
	struct ar9170 *ar = hw->priv;

	FUNC4(ar, CARL9170_STARTED, CARL9170_IDLE);

	FUNC8(ar->hw);

	FUNC9(&ar->mutex);
	if (FUNC0(ar)) {
		FUNC1(ar->beacon_iter, NULL);

		FUNC3(ar, 0);

		/* stop DMA */
		FUNC6(ar, AR9170_MAC_REG_DMA_TRIGGER, 0);
		FUNC5(ar);
	}

	FUNC7(ar);
	FUNC10(&ar->mutex);

	FUNC2(ar);
}