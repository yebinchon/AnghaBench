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
 unsigned long DVMA_PAGE_MASK ; 
 int DVMA_PAGE_SIZE ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (unsigned long) ; 
 scalar_t__ FUNC2 (unsigned long,unsigned long,unsigned long) ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (char*,unsigned long,...) ; 

void *FUNC8(unsigned long len, unsigned long align)
{
	unsigned long kaddr;
	unsigned long baddr;
	unsigned long vaddr;

	if(!len)
		return NULL;

#ifdef DEBUG
	printk("dvma_malloc request %lx bytes\n", len);
#endif
	len = ((len + (DVMA_PAGE_SIZE-1)) & DVMA_PAGE_MASK);

        if((kaddr = FUNC0(GFP_ATOMIC, FUNC6(len))) == 0)
		return NULL;

	if((baddr = (unsigned long)FUNC2(kaddr, len, align)) == 0) {
		FUNC5(kaddr, FUNC6(len));
		return NULL;
	}

	vaddr = FUNC1(baddr);

	if(FUNC3(kaddr, vaddr, len) < 0) {
		FUNC4((void *)baddr);
		FUNC5(kaddr, FUNC6(len));
		return NULL;
	}

#ifdef DEBUG
	printk("mapped %08lx bytes %08lx kern -> %08lx bus\n",
	       len, kaddr, baddr);
#endif

	return (void *)vaddr;

}