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
typedef  int /*<<< orphan*/  u16 ;
struct rt2x00_dev {int /*<<< orphan*/  rssi_offset; int /*<<< orphan*/  cap_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAPABILITY_HW_CRYPTO ; 
 int /*<<< orphan*/  DEFAULT_RSSI_OFFSET ; 
 int /*<<< orphan*/  MAC_CSR19 ; 
 int /*<<< orphan*/  MAC_CSR19_DIR0 ; 
 int /*<<< orphan*/  REQUIRE_ATIM_QUEUE ; 
 int /*<<< orphan*/  REQUIRE_BEACON_GUARD ; 
 int /*<<< orphan*/  REQUIRE_COPY_IV ; 
 int /*<<< orphan*/  REQUIRE_PS_AUTOWAKE ; 
 int /*<<< orphan*/  REQUIRE_SW_SEQNO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  modparam_nohwcrypt ; 
 int FUNC1 (struct rt2x00_dev*) ; 
 int FUNC2 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct rt2x00_dev *rt2x00dev)
{
	int retval;
	u16 reg;

	/*
	 * Allocate eeprom data.
	 */
	retval = FUNC5(rt2x00dev);
	if (retval)
		return retval;

	retval = FUNC1(rt2x00dev);
	if (retval)
		return retval;

	/*
	 * Enable rfkill polling by setting GPIO direction of the
	 * rfkill switch GPIO pin correctly.
	 */
	FUNC3(rt2x00dev, MAC_CSR19, &reg);
	FUNC6(&reg, MAC_CSR19_DIR0, 0);
	FUNC4(rt2x00dev, MAC_CSR19, reg);

	/*
	 * Initialize hw specifications.
	 */
	retval = FUNC2(rt2x00dev);
	if (retval)
		return retval;

	/*
	 * This device requires the atim queue
	 */
	FUNC0(REQUIRE_ATIM_QUEUE, &rt2x00dev->cap_flags);
	FUNC0(REQUIRE_BEACON_GUARD, &rt2x00dev->cap_flags);
	if (!modparam_nohwcrypt) {
		FUNC0(CAPABILITY_HW_CRYPTO, &rt2x00dev->cap_flags);
		FUNC0(REQUIRE_COPY_IV, &rt2x00dev->cap_flags);
	}
	FUNC0(REQUIRE_SW_SEQNO, &rt2x00dev->cap_flags);
	FUNC0(REQUIRE_PS_AUTOWAKE, &rt2x00dev->cap_flags);

	/*
	 * Set the rssi offset.
	 */
	rt2x00dev->rssi_offset = DEFAULT_RSSI_OFFSET;

	return 0;
}