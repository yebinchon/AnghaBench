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
typedef  int u64 ;

/* Variables and functions */
 int PIC_UPPER_INDEX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(int idx, u64 val)
{
	u64 shift, mask, pic;

	shift = 0;
	if (idx == PIC_UPPER_INDEX)
		shift = 32;

	mask = ((u64) 0xffffffff) << shift;
	val <<= shift;

	FUNC0(pic);
	pic &= ~mask;
	pic |= val;
	FUNC1(pic);
}