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
struct TYPE_2__ {int len; int type; unsigned long addr; scalar_t__ enabled; } ;

/* Variables and functions */
 TYPE_1__* breakinfo ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int) ; 

__attribute__((used)) static void FUNC2(void)
{
	unsigned long dr7;
	int correctit = 0;
	int breakbit;
	int breakno;

	FUNC0(dr7, 7);
	for (breakno = 0; breakno < 4; breakno++) {
		breakbit = 2 << (breakno << 1);
		if (!(dr7 & breakbit) && breakinfo[breakno].enabled) {
			correctit = 1;
			dr7 |= breakbit;
			dr7 &= ~(0xf0000 << (breakno << 2));
			dr7 |= ((breakinfo[breakno].len << 2) |
				 breakinfo[breakno].type) <<
			       ((breakno << 2) + 16);
			if (breakno >= 0 && breakno <= 3)
				FUNC1(breakinfo[breakno].addr, breakno);

		} else {
			if ((dr7 & breakbit) && !breakinfo[breakno].enabled) {
				correctit = 1;
				dr7 &= ~breakbit;
				dr7 &= ~(0xf0000 << (breakno << 2));
			}
		}
	}
	if (correctit)
		FUNC1(dr7, 7);
}