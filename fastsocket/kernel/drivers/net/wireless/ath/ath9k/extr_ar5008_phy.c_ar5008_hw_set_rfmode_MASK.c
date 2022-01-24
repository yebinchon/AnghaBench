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
typedef  int u32 ;
struct ath_hw {int dummy; } ;
struct ath9k_channel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_PHY_MODE ; 
 int AR_PHY_MODE_DYNAMIC ; 
 int AR_PHY_MODE_DYN_CCK_DISABLE ; 
 int AR_PHY_MODE_OFDM ; 
 int AR_PHY_MODE_RF2GHZ ; 
 int AR_PHY_MODE_RF5GHZ ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*) ; 
 scalar_t__ FUNC1 (struct ath9k_channel*) ; 
 scalar_t__ FUNC2 (struct ath_hw*,struct ath9k_channel*) ; 
 scalar_t__ FUNC3 (struct ath9k_channel*) ; 
 scalar_t__ FUNC4 (struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct ath_hw *ah, struct ath9k_channel *chan)
{
	u32 rfMode = 0;

	if (chan == NULL)
		return;

	rfMode |= (FUNC3(chan) || FUNC4(chan))
		? AR_PHY_MODE_DYNAMIC : AR_PHY_MODE_OFDM;

	if (!FUNC0(ah))
		rfMode |= (FUNC1(chan)) ?
			AR_PHY_MODE_RF5GHZ : AR_PHY_MODE_RF2GHZ;

	if (FUNC2(ah, chan))
		rfMode |= (AR_PHY_MODE_DYNAMIC | AR_PHY_MODE_DYN_CCK_DISABLE);

	FUNC5(ah, AR_PHY_MODE, rfMode);
}