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
 int /*<<< orphan*/  FUNC1 (int,int) ; 

void FUNC2(u32 gpio, unsigned int reg)
{
	u32 base = FUNC0(GEODE_DEV_GPIO);

	if (!base)
		return;

	/* low bank register */
	if (gpio & 0xFFFF)
		FUNC1((gpio & 0xFFFF) << 16, base + reg);
	/* high bank register */
	gpio &= (0xFFFF << 16);
	if (gpio)
		FUNC1(gpio, base + 0x80 + reg);
}