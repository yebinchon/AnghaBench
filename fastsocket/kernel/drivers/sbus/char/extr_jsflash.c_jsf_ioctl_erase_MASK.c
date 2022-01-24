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
typedef  int __u32 ;

/* Variables and functions */
 int FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

__attribute__((used)) static int FUNC4(unsigned long arg)
{
	unsigned long p;

	/* p = jsf0.base;	hits wrong bank */
	p = 0x20400000;

	FUNC1(p, 0xAAAAAAAA);		/* Unlock 1 Write 1 */
	FUNC1(p, 0x55555555);		/* Unlock 1 Write 2 */
	FUNC1(p, 0x80808080);		/* Erase setup */
	FUNC1(p, 0xAAAAAAAA);		/* Unlock 2 Write 1 */
	FUNC1(p, 0x55555555);		/* Unlock 2 Write 2 */
	FUNC1(p, 0x10101010);		/* Chip erase */

#if 0
	/*
	 * This code is ok, except that counter based timeout
	 * has no place in this world. Let's just drop timeouts...
	 */
	{
		int i;
		__u32 x;
		for (i = 0; i < 1000000; i++) {
			x = jsf_inl(p);
			if ((x & 0x80808080) == 0x80808080) break;
		}
		if ((x & 0x80808080) != 0x80808080) {
			printk("jsf0: erase timeout with 0x%08x\n", x);
		} else {
			printk("jsf0: erase done with 0x%08x\n", x);
		}
	}
#else
	FUNC2(p);
#endif

	return 0;
}