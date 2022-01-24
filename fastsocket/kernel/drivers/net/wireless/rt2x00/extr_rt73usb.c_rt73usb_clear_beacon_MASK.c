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
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int TXRX_CSR9 ; 
 int /*<<< orphan*/  TXRX_CSR9_BEACON_GEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct queue_entry *entry)
{
	struct rt2x00_dev *rt2x00dev = entry->queue->rt2x00dev;
	unsigned int beacon_base;
	u32 reg;

	/*
	 * Disable beaconing while we are reloading the beacon data,
	 * otherwise we might be sending out invalid data.
	 */
	FUNC2(rt2x00dev, TXRX_CSR9, &reg);
	FUNC1(&reg, TXRX_CSR9_BEACON_GEN, 0);
	FUNC3(rt2x00dev, TXRX_CSR9, reg);

	/*
	 * Clear beacon.
	 */
	beacon_base = FUNC0(entry->entry_idx);
	FUNC3(rt2x00dev, beacon_base, 0);

	/*
	 * Enable beaconing again.
	 */
	FUNC1(&reg, TXRX_CSR9_BEACON_GEN, 1);
	FUNC3(rt2x00dev, TXRX_CSR9, reg);
}