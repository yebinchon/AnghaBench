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
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 

void FUNC2(void *page, unsigned long vaddr)
{
	unsigned long flags;
	/* This function is implemented in assembly in pacache.S */
	extern void FUNC0(void *page, unsigned long vaddr);

	FUNC1(flags);
	FUNC0(page, vaddr);
	FUNC0(flags);
}