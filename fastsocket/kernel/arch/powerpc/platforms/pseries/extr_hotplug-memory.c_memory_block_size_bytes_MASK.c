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
typedef  unsigned int u32 ;
struct device_node {int dummy; } ;

/* Variables and functions */
 struct device_node* FUNC0 (char*) ; 
 void* FUNC1 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,unsigned int) ; 

u32 FUNC4(void)
{
	struct device_node *np;
	unsigned int memblock_size = 0;

	np = FUNC0("/ibm,dynamic-reconfiguration-memory");
	if (np) {
		const unsigned long *size;

		size = FUNC1(np, "ibm,lmb-size", NULL);
		memblock_size = size ? *size : 0;

		FUNC2(np);
	} else {
		unsigned int memzero_size = 0;
		const unsigned int *regs;

		np = FUNC0("/memory@0");
		if (np) {
			regs = FUNC1(np, "reg", NULL);
			memzero_size = regs ? regs[3] : 0;
			FUNC2(np);
		}

		if (memzero_size) {
			/* We now know the size of memory@0, use this to find
			 * the first memoryblock and get its size.
			 */
			char buf[64];

			FUNC3(buf, "/memory@%x", memzero_size);
			np = FUNC0(buf);
			if (np) {
				regs = FUNC1(np, "reg", NULL);
				memblock_size = regs ? regs[3] : 0;
				FUNC2(np);
			}
		}
	}

	return memblock_size;
}