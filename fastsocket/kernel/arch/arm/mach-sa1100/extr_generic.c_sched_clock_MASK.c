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
 int /*<<< orphan*/  OSCR ; 
 unsigned long long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long long,int) ; 

unsigned long long FUNC2(void)
{
	unsigned long long v = FUNC0(OSCR);

	/* the <<1 gets rid of the cnt_32_to_63 top bit saving on a bic insn */
	v *= 78125<<1;
	FUNC1(v, 288<<1);

	return v;
}