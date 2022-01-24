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
typedef  int /*<<< orphan*/  uint16_t ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  vr41xx_tclock ; 
 int /*<<< orphan*/  vr41xx_vtclock ; 

void FUNC4(void)
{
	unsigned long pclock;
	uint16_t clkspeed;

	clkspeed = FUNC3();

	pclock = FUNC0(clkspeed);
	vr41xx_vtclock = FUNC2(clkspeed, pclock);
	vr41xx_tclock = FUNC1(clkspeed, pclock, vr41xx_vtclock);
}