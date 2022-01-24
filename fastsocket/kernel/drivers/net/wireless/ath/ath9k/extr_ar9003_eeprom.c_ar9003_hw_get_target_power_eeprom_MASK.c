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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct ath_hw {int dummy; } ;
struct ath_common {int dummy; } ;
struct ath9k_channel {int /*<<< orphan*/  channel; } ;

/* Variables and functions */
 int /*<<< orphan*/  EEPROM ; 
 int FUNC0 (struct ath9k_channel*) ; 
 scalar_t__ FUNC1 (struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 unsigned int ar9300RateSize ; 
 struct ath_common* FUNC6 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_common*,int /*<<< orphan*/ ,char*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct ath_hw *ah,
					      struct ath9k_channel *chan,
					      u8 *targetPowerValT2)
{
	bool is2GHz = FUNC0(chan);
	unsigned int i = 0;
	struct ath_common *common = FUNC6(ah);
	u16 freq = chan->channel;

	if (is2GHz)
		FUNC2(ah, freq, targetPowerValT2);

	FUNC5(ah, freq, targetPowerValT2, is2GHz);
	FUNC3(ah, freq, targetPowerValT2, is2GHz);

	if (FUNC1(chan))
		FUNC4(ah, freq, targetPowerValT2,
						 is2GHz);

	for (i = 0; i < ar9300RateSize; i++) {
		FUNC7(common, EEPROM, "TPC[%02d] 0x%08x\n",
			i, targetPowerValT2[i]);
	}
}