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
typedef  int u64 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  nsize ;
typedef  int /*<<< orphan*/  naddr ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 void* FUNC2 (char*) ; 
 scalar_t__ FUNC3 (void*,char*,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (void*,char*,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (void*,char*,char*) ; 

void FUNC7(u64 start, u64 size)
{
	void *root, *memory;
	int naddr, nsize, i;
	u32 memreg[4];

	root = FUNC2("/");
	if (FUNC3(root, "#address-cells", &naddr, sizeof(naddr)) < 0)
		naddr = 2;
	if (naddr < 1 || naddr > 2)
		FUNC1("Can't cope with #address-cells == %d in /\n\r", naddr);

	if (FUNC3(root, "#size-cells", &nsize, sizeof(nsize)) < 0)
		nsize = 1;
	if (nsize < 1 || nsize > 2)
		FUNC1("Can't cope with #size-cells == %d in /\n\r", nsize);

	i = 0;
	if (naddr == 2)
		memreg[i++] = start >> 32;
	memreg[i++] = start & 0xffffffff;
	if (nsize == 2)
		memreg[i++] = size >> 32;
	memreg[i++] = size & 0xffffffff;

	memory = FUNC2("/memory");
	if (! memory) {
		memory = FUNC0(NULL, "memory");
		FUNC6(memory, "device_type", "memory");
	}

	FUNC4("Memory <- <0x%x", memreg[0]);
	for (i = 1; i < (naddr + nsize); i++)
		FUNC4(" 0x%x", memreg[i]);
	FUNC4("> (%ldMB)\n\r", (unsigned long)(size >> 20));

	FUNC5(memory, "reg", memreg, (naddr + nsize)*sizeof(u32));
}