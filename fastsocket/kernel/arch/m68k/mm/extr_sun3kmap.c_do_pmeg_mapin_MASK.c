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
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ SUN3_INVALID_PMEG ; 
 unsigned long SUN3_PMEG_MASK ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (unsigned long) ; 

__attribute__((used)) static inline void FUNC4(unsigned long phys, unsigned long virt,
				 unsigned long type, int pages)
{

	if(FUNC3(virt & ~SUN3_PMEG_MASK) == SUN3_INVALID_PMEG)
		FUNC1(FUNC2(), virt);

	while(pages) {
		FUNC0(phys, virt, type);
		phys += PAGE_SIZE;
		virt += PAGE_SIZE;
		pages--;
	}
}