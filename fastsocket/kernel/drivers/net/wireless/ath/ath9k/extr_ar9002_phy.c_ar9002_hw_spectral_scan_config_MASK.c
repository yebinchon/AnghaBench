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
typedef  int u8 ;
struct ath_spec_scan {int count; int period; int fft_period; scalar_t__ endless; scalar_t__ short_repeat; int /*<<< orphan*/  enabled; } ;
struct ath_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_PHY_RADAR_0 ; 
 int /*<<< orphan*/  AR_PHY_RADAR_0_FFT_ENA ; 
 int /*<<< orphan*/  AR_PHY_SPECTRAL_SCAN ; 
 int /*<<< orphan*/  AR_PHY_SPECTRAL_SCAN_COUNT ; 
 int /*<<< orphan*/  AR_PHY_SPECTRAL_SCAN_ENABLE ; 
 int /*<<< orphan*/  AR_PHY_SPECTRAL_SCAN_FFT_PERIOD ; 
 int /*<<< orphan*/  AR_PHY_SPECTRAL_SCAN_PERIOD ; 
 int /*<<< orphan*/  AR_PHY_SPECTRAL_SCAN_SHORT_REPEAT ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ath_hw *ah,
				    struct ath_spec_scan *param)
{
	u8 count;

	if (!param->enabled) {
		FUNC0(ah, AR_PHY_SPECTRAL_SCAN,
			    AR_PHY_SPECTRAL_SCAN_ENABLE);
		return;
	}
	FUNC2(ah, AR_PHY_RADAR_0, AR_PHY_RADAR_0_FFT_ENA);
	FUNC2(ah, AR_PHY_SPECTRAL_SCAN, AR_PHY_SPECTRAL_SCAN_ENABLE);

	if (param->short_repeat)
		FUNC2(ah, AR_PHY_SPECTRAL_SCAN,
			    AR_PHY_SPECTRAL_SCAN_SHORT_REPEAT);
	else
		FUNC0(ah, AR_PHY_SPECTRAL_SCAN,
			    AR_PHY_SPECTRAL_SCAN_SHORT_REPEAT);

	/* on AR92xx, the highest bit of count will make the the chip send
	 * spectral samples endlessly. Check if this really was intended,
	 * and fix otherwise.
	 */
	count = param->count;
	if (param->endless)
		count = 0x80;
	else if (count & 0x80)
		count = 0x7f;

	FUNC1(ah, AR_PHY_SPECTRAL_SCAN,
		      AR_PHY_SPECTRAL_SCAN_COUNT, count);
	FUNC1(ah, AR_PHY_SPECTRAL_SCAN,
		      AR_PHY_SPECTRAL_SCAN_PERIOD, param->period);
	FUNC1(ah, AR_PHY_SPECTRAL_SCAN,
		      AR_PHY_SPECTRAL_SCAN_FFT_PERIOD, param->fft_period);

	return;
}