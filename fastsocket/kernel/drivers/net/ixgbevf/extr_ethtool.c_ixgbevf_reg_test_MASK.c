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
typedef  scalar_t__ u32 ;
struct ixgbevf_reg_test {scalar_t__ reg; scalar_t__ array_len; int test_type; int /*<<< orphan*/  write; int /*<<< orphan*/  mask; } ;
struct TYPE_2__ {scalar_t__ hw_addr; } ;
struct ixgbevf_adapter {TYPE_1__ hw; } ;

/* Variables and functions */
#define  PATTERN_TEST 133 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  SET_READ_TEST 132 
#define  TABLE32_TEST 131 
#define  TABLE64_TEST_HI 130 
#define  TABLE64_TEST_LO 129 
#define  WRITE_NO_TEST 128 
 struct ixgbevf_reg_test* reg_test_vf ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct ixgbevf_adapter *adapter, u64 *data)
{
	const struct ixgbevf_reg_test *test;
	u32 i;

	test = reg_test_vf;

	/*
	 * Perform the register test, looping through the test table
	 * until we either fail or reach the null entry.
	 */
	while (test->reg) {
		for (i = 0; i < test->array_len; i++) {
			switch (test->test_type) {
			case PATTERN_TEST:
				FUNC0(test->reg + (i * 0x40),
						test->mask,
						test->write);
				break;
			case SET_READ_TEST:
				FUNC1(test->reg + (i * 0x40),
						test->mask,
						test->write);
				break;
			case WRITE_NO_TEST:
				FUNC2(test->write,
				       (adapter->hw.hw_addr + test->reg)
				       + (i * 0x40));
				break;
			case TABLE32_TEST:
				FUNC0(test->reg + (i * 4),
						test->mask,
						test->write);
				break;
			case TABLE64_TEST_LO:
				FUNC0(test->reg + (i * 8),
						test->mask,
						test->write);
				break;
			case TABLE64_TEST_HI:
				FUNC0((test->reg + 4) + (i * 8),
						test->mask,
						test->write);
				break;
			}
		}
		test++;
	}

	*data = 0;
	return *data;
}