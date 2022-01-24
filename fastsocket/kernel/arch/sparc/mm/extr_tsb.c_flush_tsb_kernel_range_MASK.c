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
struct tsb {unsigned long tag; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERNEL_TSB_NENTRIES ; 
 int /*<<< orphan*/  PAGE_SHIFT ; 
 scalar_t__ PAGE_SIZE ; 
 unsigned long TSB_TAG_INVALID_BIT ; 
 struct tsb* swapper_tsb ; 
 scalar_t__ FUNC0 (unsigned long,unsigned long) ; 
 unsigned long FUNC1 (unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(unsigned long start, unsigned long end)
{
	unsigned long v;

	for (v = start; v < end; v += PAGE_SIZE) {
		unsigned long hash = FUNC1(v, PAGE_SHIFT,
					      KERNEL_TSB_NENTRIES);
		struct tsb *ent = &swapper_tsb[hash];

		if (FUNC0(ent->tag, v))
			ent->tag = (1UL << TSB_TAG_INVALID_BIT);
	}
}