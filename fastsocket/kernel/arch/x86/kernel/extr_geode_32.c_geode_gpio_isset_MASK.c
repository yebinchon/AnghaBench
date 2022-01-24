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
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  GEODE_DEV_GPIO ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 

int FUNC2(u32 gpio, unsigned int reg)
{
	u32 base = FUNC0(GEODE_DEV_GPIO);
	u32 val;

	if (!base)
		return 0;

	/* low bank register */
	if (gpio & 0xFFFF) {
		val = FUNC1(base + reg) & (gpio & 0xFFFF);
		if ((gpio & 0xFFFF) == val)
			return 1;
	}
	/* high bank register */
	gpio >>= 16;
	if (gpio) {
		val = FUNC1(base + 0x80 + reg) & gpio;
		if (gpio == val)
			return 1;
	}
	return 0;
}