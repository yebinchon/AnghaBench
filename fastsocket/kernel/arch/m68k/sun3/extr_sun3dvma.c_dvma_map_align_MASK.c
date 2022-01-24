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
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned long DVMA_PAGE_MASK ; 
 int DVMA_PAGE_SIZE ; 
 unsigned long PAGE_MASK ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long,int) ; 
 unsigned long FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned long,unsigned long,...) ; 

inline unsigned long FUNC4(unsigned long kaddr, int len, int align)
{

	unsigned long baddr;
	unsigned long off;

	if(!len)
		len = 0x800;

	if(!kaddr || !len) {
//		printk("error: kaddr %lx len %x\n", kaddr, len);
//		*(int *)4 = 0;
		return 0;
	}

#ifdef DEBUG
	printk("dvma_map request %08lx bytes from %08lx\n",
	       len, kaddr);
#endif
	off = kaddr & ~DVMA_PAGE_MASK;
	kaddr &= PAGE_MASK;
	len += off;
	len = ((len + (DVMA_PAGE_SIZE-1)) & DVMA_PAGE_MASK);

	if(align == 0)
		align = DVMA_PAGE_SIZE;
	else
		align = ((align + (DVMA_PAGE_SIZE-1)) & DVMA_PAGE_MASK);

	baddr = FUNC2(len, align);
//	printk("using baddr %lx\n", baddr);

	if(!FUNC1(kaddr, baddr, len))
		return (baddr + off);

	FUNC3("dvma_map failed kaddr %lx baddr %lx len %x\n", kaddr, baddr, len);
	FUNC0();
	return 0;
}