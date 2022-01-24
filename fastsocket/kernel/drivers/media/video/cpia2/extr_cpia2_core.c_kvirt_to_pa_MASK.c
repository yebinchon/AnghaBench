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
 int PAGE_SIZE ; 
 unsigned long FUNC0 (unsigned long) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 

__attribute__((used)) static inline unsigned long FUNC3(unsigned long adr)
{
	unsigned long kva, ret;

	kva = (unsigned long) FUNC1(FUNC2((void *)adr));
	kva |= adr & (PAGE_SIZE-1); /* restore the offset */
	ret = FUNC0(kva);
	return ret;
}