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

/* Variables and functions */
 int /*<<< orphan*/  _dtb_start ; 
 scalar_t__ _end ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int* FUNC2 (int /*<<< orphan*/ ,int,char*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,char*,char*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int,int,int) ; 
 int timebase_period_ns ; 

void FUNC9(unsigned long r3, unsigned long r4, unsigned long r5,
		   unsigned long r6, unsigned long r7)
{
	const u32 *na, *ns, *reg, *timebase;
	u64 memsize64;
	int node, size, i;

	/* Make sure FDT blob is sane */
	if (FUNC1(_dtb_start) != 0)
		FUNC0("Invalid device tree blob\n");

	/* Find the #address-cells and #size-cells properties */
	node = FUNC5(_dtb_start, "/");
	if (node < 0)
		FUNC0("Cannot find root node\n");
	na = FUNC2(_dtb_start, node, "#address-cells", &size);
	if (!na || (size != 4))
		FUNC0("Cannot find #address-cells property");
	ns = FUNC2(_dtb_start, node, "#size-cells", &size);
	if (!ns || (size != 4))
		FUNC0("Cannot find #size-cells property");

	/* Find the memory range */
	node = FUNC4(_dtb_start, -1, "device_type",
					     "memory", sizeof("memory"));
	if (node < 0)
		FUNC0("Cannot find memory node\n");
	reg = FUNC2(_dtb_start, node, "reg", &size);
	if (size < (*na+*ns) * sizeof(u32))
		FUNC0("cannot get memory range\n");

	/* Only interested in memory based at 0 */
	for (i = 0; i < *na; i++)
		if (*reg++ != 0)
			FUNC0("Memory range is not based at address 0\n");

	/* get the memsize and trucate it to under 4G on 32 bit machines */
	memsize64 = 0;
	for (i = 0; i < *ns; i++)
		memsize64 = (memsize64 << 32) | *reg++;
	if (sizeof(void *) == 4 && memsize64 >= 0x100000000ULL)
		memsize64 = 0xffffffff;

	/* finally, setup the timebase */
	node = FUNC4(_dtb_start, -1, "device_type",
					     "cpu", sizeof("cpu"));
	if (!node)
		FUNC0("Cannot find cpu node\n");
	timebase = FUNC2(_dtb_start, node, "timebase-frequency", &size);
	if (timebase && (size == 4))
		timebase_period_ns = 1000000000 / *timebase;

	/* Now we have the memory size; initialize the heap */
	FUNC8(_end, memsize64 - (unsigned long)_end, 32, 64);

	/* prepare the device tree and find the console */
	FUNC3(_dtb_start);

	if (&platform_specific_init)
		FUNC6();

	FUNC7();
}