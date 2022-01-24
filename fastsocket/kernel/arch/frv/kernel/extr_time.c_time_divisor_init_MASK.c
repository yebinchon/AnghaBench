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

/* Variables and functions */
 unsigned short HZ ; 
 int TCTR_MODE_2 ; 
 int TCTR_RL_RW_LH8 ; 
 int TCTR_SC_CTR0 ; 
 unsigned short __res_bus_clock_speed_HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned short) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned short) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned short) ; 

void FUNC4(void)
{
	unsigned short base, pre, prediv;

	/* set the scheduling timer going */
	pre = 1;
	prediv = 4;
	base = __res_bus_clock_speed_HZ / pre / HZ / (1 << prediv);

	FUNC2(pre);
	FUNC3(0, prediv);
	FUNC1(TCTR_SC_CTR0 | TCTR_RL_RW_LH8 | TCTR_MODE_2);
	FUNC0(0, base & 0xff);
	FUNC0(0, base >> 8);
}