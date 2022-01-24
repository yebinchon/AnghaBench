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
struct rt2x00_dev {struct rt2800_drv_data* drv_data; } ;
struct rt2800_drv_data {int bbp25; int bbp26; void* calibration_bw40; void* calibration_bw20; } ;

/* Variables and functions */
 int /*<<< orphan*/  BBP4_BANDWIDTH ; 
 int /*<<< orphan*/  RFCSR22_BASEBAND_LOOPBACK ; 
 int /*<<< orphan*/  RT3070 ; 
 int /*<<< orphan*/  FUNC0 (struct rt2x00_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,int,int) ; 
 void* FUNC2 (struct rt2x00_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct rt2x00_dev*,int,int) ; 
 scalar_t__ FUNC5 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct rt2x00_dev *rt2x00dev)
{
	struct rt2800_drv_data *drv_data = rt2x00dev->drv_data;
	u8 filter_tgt_bw20;
	u8 filter_tgt_bw40;
	u8 rfcsr, bbp;

	/*
	 * TODO: sync filter_tgt values with vendor driver
	 */
	if (FUNC5(rt2x00dev, RT3070)) {
		filter_tgt_bw20 = 0x16;
		filter_tgt_bw40 = 0x19;
	} else {
		filter_tgt_bw20 = 0x13;
		filter_tgt_bw40 = 0x15;
	}

	drv_data->calibration_bw20 =
		FUNC2(rt2x00dev, false, filter_tgt_bw20);
	drv_data->calibration_bw40 =
		FUNC2(rt2x00dev, true, filter_tgt_bw40);

	/*
	 * Save BBP 25 & 26 values for later use in channel switching (for 3052)
	 */
	FUNC0(rt2x00dev, 25, &drv_data->bbp25);
	FUNC0(rt2x00dev, 26, &drv_data->bbp26);

	/*
	 * Set back to initial state
	 */
	FUNC1(rt2x00dev, 24, 0);

	FUNC3(rt2x00dev, 22, &rfcsr);
	FUNC6(&rfcsr, RFCSR22_BASEBAND_LOOPBACK, 0);
	FUNC4(rt2x00dev, 22, rfcsr);

	/*
	 * Set BBP back to BW20
	 */
	FUNC0(rt2x00dev, 4, &bbp);
	FUNC6(&bbp, BBP4_BANDWIDTH, 0);
	FUNC1(rt2x00dev, 4, bbp);
}