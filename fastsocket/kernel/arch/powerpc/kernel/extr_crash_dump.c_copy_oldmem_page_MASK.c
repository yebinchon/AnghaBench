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
typedef  size_t ssize_t ;

/* Variables and functions */
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 void* FUNC0 (unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC1 (unsigned long) ; 
 size_t FUNC2 (void*,char*,size_t,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 unsigned long max_pfn ; 
 size_t FUNC4 (size_t,int /*<<< orphan*/ ) ; 

ssize_t FUNC5(unsigned long pfn, char *buf,
			size_t csize, unsigned long offset, int userbuf)
{
	void  *vaddr;

	if (!csize)
		return 0;

	csize = FUNC4(csize, PAGE_SIZE);

	if (pfn < max_pfn) {
		vaddr = FUNC1(pfn << PAGE_SHIFT);
		csize = FUNC2(vaddr, buf, csize, offset, userbuf);
	} else {
		vaddr = FUNC0(pfn << PAGE_SHIFT, PAGE_SIZE, 0);
		csize = FUNC2(vaddr, buf, csize, offset, userbuf);
		FUNC3(vaddr);
	}

	return csize;
}