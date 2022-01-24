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
struct rt2x00_field32 {int dummy; } ;
struct rt2x00_dev {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVICE_STATE_PRESENT ; 
 int ENODEV ; 
 unsigned int REGISTER_BUSY_COUNT ; 
 int /*<<< orphan*/  REGISTER_BUSY_DELAY ; 
 int /*<<< orphan*/  FUNC0 (struct rt2x00_dev*,char*,unsigned int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct rt2x00_field32 const) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,unsigned int const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct rt2x00_dev *rt2x00dev,
			   const unsigned int offset,
			   const struct rt2x00_field32 field,
			   u32 *reg)
{
	unsigned int i;

	if (!FUNC3(DEVICE_STATE_PRESENT, &rt2x00dev->flags))
		return -ENODEV;

	for (i = 0; i < REGISTER_BUSY_COUNT; i++) {
		FUNC2(rt2x00dev, offset, reg);
		if (!FUNC1(*reg, field))
			return 1;
		FUNC4(REGISTER_BUSY_DELAY);
	}

	FUNC0(rt2x00dev, "Indirect register access failed: offset=0x%.08x, value=0x%.08x\n",
		   offset, *reg);
	*reg = ~0;

	return 0;
}