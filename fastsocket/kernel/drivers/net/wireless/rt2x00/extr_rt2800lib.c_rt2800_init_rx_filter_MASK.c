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
typedef  scalar_t__ u8 ;
struct rt2x00_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BBP4_BANDWIDTH ; 
 int /*<<< orphan*/  RFCSR22_BASEBAND_LOOPBACK ; 
 int /*<<< orphan*/  RFCSR31_RX_H20M ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (struct rt2x00_dev*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static u8 FUNC6(struct rt2x00_dev *rt2x00dev, bool bw40,
				u8 filter_target)
{
	unsigned int i;
	u8 bbp;
	u8 rfcsr;
	u8 passband;
	u8 stopband;
	u8 overtuned = 0;
	u8 rfcsr24 = (bw40) ? 0x27 : 0x07;

	FUNC4(rt2x00dev, 24, rfcsr24);

	FUNC1(rt2x00dev, 4, &bbp);
	FUNC5(&bbp, BBP4_BANDWIDTH, 2 * bw40);
	FUNC2(rt2x00dev, 4, bbp);

	FUNC3(rt2x00dev, 31, &rfcsr);
	FUNC5(&rfcsr, RFCSR31_RX_H20M, bw40);
	FUNC4(rt2x00dev, 31, rfcsr);

	FUNC3(rt2x00dev, 22, &rfcsr);
	FUNC5(&rfcsr, RFCSR22_BASEBAND_LOOPBACK, 1);
	FUNC4(rt2x00dev, 22, rfcsr);

	/*
	 * Set power & frequency of passband test tone
	 */
	FUNC2(rt2x00dev, 24, 0);

	for (i = 0; i < 100; i++) {
		FUNC2(rt2x00dev, 25, 0x90);
		FUNC0(1);

		FUNC1(rt2x00dev, 55, &passband);
		if (passband)
			break;
	}

	/*
	 * Set power & frequency of stopband test tone
	 */
	FUNC2(rt2x00dev, 24, 0x06);

	for (i = 0; i < 100; i++) {
		FUNC2(rt2x00dev, 25, 0x90);
		FUNC0(1);

		FUNC1(rt2x00dev, 55, &stopband);

		if ((passband - stopband) <= filter_target) {
			rfcsr24++;
			overtuned += ((passband - stopband) == filter_target);
		} else
			break;

		FUNC4(rt2x00dev, 24, rfcsr24);
	}

	rfcsr24 -= !!overtuned;

	FUNC4(rt2x00dev, 24, rfcsr24);
	return rfcsr24;
}