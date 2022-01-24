#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct rt2x00_dev {int dummy; } ;
struct queue_entry {int /*<<< orphan*/  entry_idx; TYPE_1__* queue; } ;
struct TYPE_2__ {struct rt2x00_dev* rt2x00dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCN_TIME_CFG ; 
 int /*<<< orphan*/  BCN_TIME_CFG_BEACON_GEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

void FUNC5(struct queue_entry *entry)
{
	struct rt2x00_dev *rt2x00dev = entry->queue->rt2x00dev;
	u32 reg;

	/*
	 * Disable beaconing while we are reloading the beacon data,
	 * otherwise we might be sending out invalid data.
	 */
	FUNC2(rt2x00dev, BCN_TIME_CFG, &reg);
	FUNC4(&reg, BCN_TIME_CFG_BEACON_GEN, 0);
	FUNC3(rt2x00dev, BCN_TIME_CFG, reg);

	/*
	 * Clear beacon.
	 */
	FUNC1(rt2x00dev,
				     FUNC0(entry->entry_idx));

	/*
	 * Enabled beaconing again.
	 */
	FUNC4(&reg, BCN_TIME_CFG_BEACON_GEN, 1);
	FUNC3(rt2x00dev, BCN_TIME_CFG, reg);
}