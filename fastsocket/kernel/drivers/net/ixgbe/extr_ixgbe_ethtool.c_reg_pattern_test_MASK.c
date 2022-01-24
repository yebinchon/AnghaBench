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
typedef  int u64 ;
typedef  int u32 ;
struct TYPE_2__ {scalar_t__ hw_addr; } ;
struct ixgbe_adapter {TYPE_1__ hw; } ;

/* Variables and functions */
 int FUNC0 (int const*) ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int,int const) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int const,scalar_t__) ; 

__attribute__((used)) static bool FUNC4(struct ixgbe_adapter *adapter, u64 *data, int reg,
			     u32 mask, u32 write)
{
	u32 pat, val, before;
	static const u32 test_pattern[] = {
		0x5A5A5A5A, 0xA5A5A5A5, 0x00000000, 0xFFFFFFFF};

	for (pat = 0; pat < FUNC0(test_pattern); pat++) {
		before = FUNC2(adapter->hw.hw_addr + reg);
		FUNC3((test_pattern[pat] & write),
		       (adapter->hw.hw_addr + reg));
		val = FUNC2(adapter->hw.hw_addr + reg);
		if (val != (test_pattern[pat] & write & mask)) {
			FUNC1(drv, "pattern test reg %04X failed: got "
			      "0x%08X expected 0x%08X\n",
			      reg, val, (test_pattern[pat] & write & mask));
			*data = reg;
			FUNC3(before, adapter->hw.hw_addr + reg);
			return 1;
		}
		FUNC3(before, adapter->hw.hw_addr + reg);
	}
	return 0;
}