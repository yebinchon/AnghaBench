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
 size_t EFAULT ; 
 size_t ENOMEM ; 
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ FUNC0 (char*,void*,size_t) ; 
 void* FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (char*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC4 () ; 

ssize_t FUNC5(unsigned long pfn, char *buf,
		size_t csize, unsigned long offset, int userbuf)
{
	void  *vaddr;

	if (!csize)
		return 0;

	vaddr = FUNC1(pfn << PAGE_SHIFT, PAGE_SIZE);
	if (!vaddr)
		return -ENOMEM;

	if (userbuf) {
		if (FUNC0(buf, vaddr + offset, csize)) {
			FUNC2(vaddr);
			return -EFAULT;
		}
	} else
		FUNC3(buf, vaddr + offset, csize);

	FUNC4();
	FUNC2(vaddr);
	return csize;
}