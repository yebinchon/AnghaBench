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
struct rt2x00_dev {int beacon_int; int /*<<< orphan*/  flags; scalar_t__ intf_ap_count; struct rt2800_drv_data* drv_data; } ;
struct rt2800_drv_data {int tbtt_tick; } ;

/* Variables and functions */
 int BCN_TBTT_OFFSET ; 
 int /*<<< orphan*/  BCN_TIME_CFG ; 
 int /*<<< orphan*/  BCN_TIME_CFG_BEACON_INTERVAL ; 
 int /*<<< orphan*/  DEVICE_STATE_ENABLED_RADIO ; 
 int /*<<< orphan*/  INT_MASK_CSR_TBTT ; 
 int /*<<< orphan*/  FUNC0 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(unsigned long data)
{
	struct rt2x00_dev *rt2x00dev = (struct rt2x00_dev *)data;
	struct rt2800_drv_data *drv_data = rt2x00dev->drv_data;
	u32 reg;

	FUNC2(rt2x00dev);

	if (rt2x00dev->intf_ap_count) {
		/*
		 * The rt2800pci hardware tbtt timer is off by 1us per tbtt
		 * causing beacon skew and as a result causing problems with
		 * some powersaving clients over time. Shorten the beacon
		 * interval every 64 beacons by 64us to mitigate this effect.
		 */
		if (drv_data->tbtt_tick == (BCN_TBTT_OFFSET - 2)) {
			FUNC3(rt2x00dev, BCN_TIME_CFG, &reg);
			FUNC1(&reg, BCN_TIME_CFG_BEACON_INTERVAL,
					   (rt2x00dev->beacon_int * 16) - 1);
			FUNC4(rt2x00dev, BCN_TIME_CFG, reg);
		} else if (drv_data->tbtt_tick == (BCN_TBTT_OFFSET - 1)) {
			FUNC3(rt2x00dev, BCN_TIME_CFG, &reg);
			FUNC1(&reg, BCN_TIME_CFG_BEACON_INTERVAL,
					   (rt2x00dev->beacon_int * 16));
			FUNC4(rt2x00dev, BCN_TIME_CFG, reg);
		}
		drv_data->tbtt_tick++;
		drv_data->tbtt_tick %= BCN_TBTT_OFFSET;
	}

	if (FUNC5(DEVICE_STATE_ENABLED_RADIO, &rt2x00dev->flags))
		FUNC0(rt2x00dev, INT_MASK_CSR_TBTT);
}