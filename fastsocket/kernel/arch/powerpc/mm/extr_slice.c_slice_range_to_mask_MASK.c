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
struct slice_mask {unsigned int low_slices; unsigned int high_slices; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned long) ; 
 unsigned int FUNC1 (unsigned long) ; 
 unsigned long SLICE_LOW_TOP ; 
 unsigned long FUNC2 (unsigned long,unsigned long) ; 

__attribute__((used)) static struct slice_mask FUNC3(unsigned long start,
					     unsigned long len)
{
	unsigned long end = start + len - 1;
	struct slice_mask ret = { 0, 0 };

	if (start < SLICE_LOW_TOP) {
		unsigned long mend = FUNC2(end, SLICE_LOW_TOP);
		unsigned long mstart = FUNC2(start, SLICE_LOW_TOP);

		ret.low_slices = (1u << (FUNC1(mend) + 1))
			- (1u << FUNC1(mstart));
	}

	if ((start + len) > SLICE_LOW_TOP)
		ret.high_slices = (1u << (FUNC0(end) + 1))
			- (1u << FUNC0(start));

	return ret;
}