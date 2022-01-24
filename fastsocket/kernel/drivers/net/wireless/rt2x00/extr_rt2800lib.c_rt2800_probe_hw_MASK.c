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
struct rt2x00_dev {int /*<<< orphan*/  rssi_offset; int /*<<< orphan*/  cap_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAPABILITY_CONTROL_FILTERS ; 
 int /*<<< orphan*/  CAPABILITY_CONTROL_FILTER_PSPOLL ; 
 int /*<<< orphan*/  CAPABILITY_HW_CRYPTO ; 
 int /*<<< orphan*/  CAPABILITY_LINK_TUNING ; 
 int /*<<< orphan*/  CAPABILITY_PRE_TBTT_INTERRUPT ; 
 int /*<<< orphan*/  DEFAULT_RSSI_OFFSET ; 
 int /*<<< orphan*/  GPIO_CTRL ; 
 int /*<<< orphan*/  GPIO_CTRL_DIR2 ; 
 int /*<<< orphan*/  REQUIRE_DMA ; 
 int /*<<< orphan*/  REQUIRE_FIRMWARE ; 
 int /*<<< orphan*/  REQUIRE_HT_TX_DESC ; 
 int /*<<< orphan*/  REQUIRE_L2PAD ; 
 int /*<<< orphan*/  REQUIRE_PS_AUTOWAKE ; 
 int /*<<< orphan*/  REQUIRE_TASKLET_CONTEXT ; 
 int /*<<< orphan*/  REQUIRE_TXSTATUS_FIFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*) ; 
 int FUNC2 (struct rt2x00_dev*) ; 
 int FUNC3 (struct rt2x00_dev*) ; 
 int FUNC4 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct rt2x00_dev*) ; 
 scalar_t__ FUNC9 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

int FUNC11(struct rt2x00_dev *rt2x00dev)
{
	int retval;
	u32 reg;

	retval = FUNC4(rt2x00dev);
	if (retval)
		return retval;

	/*
	 * Allocate eeprom data.
	 */
	retval = FUNC7(rt2x00dev);
	if (retval)
		return retval;

	retval = FUNC2(rt2x00dev);
	if (retval)
		return retval;

	/*
	 * Enable rfkill polling by setting GPIO direction of the
	 * rfkill switch GPIO pin correctly.
	 */
	FUNC5(rt2x00dev, GPIO_CTRL, &reg);
	FUNC10(&reg, GPIO_CTRL_DIR2, 1);
	FUNC6(rt2x00dev, GPIO_CTRL, reg);

	/*
	 * Initialize hw specifications.
	 */
	retval = FUNC3(rt2x00dev);
	if (retval)
		return retval;

	/*
	 * Set device capabilities.
	 */
	FUNC0(CAPABILITY_CONTROL_FILTERS, &rt2x00dev->cap_flags);
	FUNC0(CAPABILITY_CONTROL_FILTER_PSPOLL, &rt2x00dev->cap_flags);
	if (!FUNC9(rt2x00dev))
		FUNC0(CAPABILITY_PRE_TBTT_INTERRUPT, &rt2x00dev->cap_flags);

	/*
	 * Set device requirements.
	 */
	if (!FUNC8(rt2x00dev))
		FUNC0(REQUIRE_FIRMWARE, &rt2x00dev->cap_flags);
	FUNC0(REQUIRE_L2PAD, &rt2x00dev->cap_flags);
	FUNC0(REQUIRE_TXSTATUS_FIFO, &rt2x00dev->cap_flags);
	if (!FUNC1(rt2x00dev))
		FUNC0(CAPABILITY_HW_CRYPTO, &rt2x00dev->cap_flags);
	FUNC0(CAPABILITY_LINK_TUNING, &rt2x00dev->cap_flags);
	FUNC0(REQUIRE_HT_TX_DESC, &rt2x00dev->cap_flags);
	if (FUNC9(rt2x00dev))
		FUNC0(REQUIRE_PS_AUTOWAKE, &rt2x00dev->cap_flags);
	else {
		FUNC0(REQUIRE_DMA, &rt2x00dev->cap_flags);
		FUNC0(REQUIRE_TASKLET_CONTEXT, &rt2x00dev->cap_flags);
	}

	/*
	 * Set the rssi offset.
	 */
	rt2x00dev->rssi_offset = DEFAULT_RSSI_OFFSET;

	return 0;
}