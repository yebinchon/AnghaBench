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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,unsigned long) ; 
 void* FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 

__attribute__((used)) static void *FUNC4(unsigned long size)
{
	void * mem;
	unsigned long adr;

	mem=FUNC2(size);
	if (!mem)
		return NULL;

	FUNC1(mem, 0, size); /* Clear the ram out, no junk to the user */
	adr=(unsigned long) mem;
	while (size > 0)
	 {
	   FUNC0(FUNC3((void *)adr));
	   adr  += PAGE_SIZE;
	   size -= PAGE_SIZE;
	 }
	return mem;
}