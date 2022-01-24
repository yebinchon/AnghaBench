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
typedef  int u32 ;
struct rt2x00_dev {int dummy; } ;
struct rf_channel {int const rf3; int const rf1; int channel; int const rf4; int const rf2; } ;

/* Variables and functions */
 int /*<<< orphan*/  BBP_R70_JAPAN_FILTER ; 
 int /*<<< orphan*/  CNT0 ; 
 int /*<<< orphan*/  RF1_TUNER ; 
 int /*<<< orphan*/  RF2523 ; 
 int /*<<< orphan*/  RF2525 ; 
 int /*<<< orphan*/  RF3_TUNER ; 
 int /*<<< orphan*/  RF3_TXPOWER ; 
 int FUNC0 (int const) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*,int,int const) ; 
 scalar_t__ FUNC4 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct rt2x00_dev*,int /*<<< orphan*/ ,int const*) ; 

__attribute__((used)) static void FUNC8(struct rt2x00_dev *rt2x00dev,
				     struct rf_channel *rf, const int txpower)
{
	u8 r70;

	/*
	 * Set TXpower.
	 */
	FUNC5(&rf->rf3, RF3_TXPOWER, FUNC0(txpower));

	/*
	 * Switch on tuning bits.
	 * For RT2523 devices we do not need to update the R1 register.
	 */
	if (!FUNC4(rt2x00dev, RF2523))
		FUNC5(&rf->rf1, RF1_TUNER, 1);
	FUNC5(&rf->rf3, RF3_TUNER, 1);

	/*
	 * For RT2525 we should first set the channel to half band higher.
	 */
	if (FUNC4(rt2x00dev, RF2525)) {
		static const u32 vals[] = {
			0x00080cbe, 0x00080d02, 0x00080d06, 0x00080d0a,
			0x00080d0e, 0x00080d12, 0x00080d16, 0x00080d1a,
			0x00080d1e, 0x00080d22, 0x00080d26, 0x00080d2a,
			0x00080d2e, 0x00080d3a
		};

		FUNC3(rt2x00dev, 1, rf->rf1);
		FUNC3(rt2x00dev, 2, vals[rf->channel - 1]);
		FUNC3(rt2x00dev, 3, rf->rf3);
		if (rf->rf4)
			FUNC3(rt2x00dev, 4, rf->rf4);
	}

	FUNC3(rt2x00dev, 1, rf->rf1);
	FUNC3(rt2x00dev, 2, rf->rf2);
	FUNC3(rt2x00dev, 3, rf->rf3);
	if (rf->rf4)
		FUNC3(rt2x00dev, 4, rf->rf4);

	/*
	 * Channel 14 requires the Japan filter bit to be set.
	 */
	r70 = 0x46;
	FUNC6(&r70, BBP_R70_JAPAN_FILTER, rf->channel == 14);
	FUNC2(rt2x00dev, 70, r70);

	FUNC1(1);

	/*
	 * Switch off tuning bits.
	 * For RT2523 devices we do not need to update the R1 register.
	 */
	if (!FUNC4(rt2x00dev, RF2523)) {
		FUNC5(&rf->rf1, RF1_TUNER, 0);
		FUNC3(rt2x00dev, 1, rf->rf1);
	}

	FUNC5(&rf->rf3, RF3_TUNER, 0);
	FUNC3(rt2x00dev, 3, rf->rf3);

	/*
	 * Clear false CRC during channel switch.
	 */
	FUNC7(rt2x00dev, CNT0, &rf->rf1);
}