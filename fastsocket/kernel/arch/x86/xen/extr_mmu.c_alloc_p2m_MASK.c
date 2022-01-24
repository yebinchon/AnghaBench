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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int GFP_KERNEL ; 
 int __GFP_NOFAIL ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,unsigned long*) ; 

__attribute__((used)) static void FUNC4(unsigned long pfn)
{
	unsigned long *p;

	p = (void *)FUNC1(GFP_KERNEL | __GFP_NOFAIL);
	FUNC0(p == NULL);

	if (!FUNC3(pfn, p))
		FUNC2((unsigned long)p);
}