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
 int /*<<< orphan*/  PLANETCORE_KEY_CRYSTAL_HZ ; 
 int /*<<< orphan*/  PLANETCORE_KEY_KB_NVRAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (void*,char*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mem_size ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (void*,char*,int*,int) ; 
 int /*<<< orphan*/  table ; 

__attribute__((used)) static void FUNC10(void)
{
	u64 val;
	void *nvrtc;

	FUNC0(0, mem_size);
	FUNC7(table);

	if (!FUNC6(table, PLANETCORE_KEY_CRYSTAL_HZ, &val)) {
		FUNC8("No PlanetCore crystal frequency key.\r\n");
		return;
	}
	FUNC3(val, 0xa8c000);
	FUNC5((u32 *)0xef600800, NULL);
	FUNC4("/plb/ebc");

	if (!FUNC6(table, PLANETCORE_KEY_KB_NVRAM, &val)) {
		FUNC8("No PlanetCore NVRAM size key.\r\n");
		return;
	}
	nvrtc = FUNC1("/plb/ebc/nvrtc@4,200000");
	if (nvrtc != NULL) {
		u32 reg[3] = { 4, 0x200000, 0};
		FUNC2(nvrtc, "reg", reg, 3);
		reg[2] = (val << 10) & 0xffffffff;
		FUNC9(nvrtc, "reg", reg, 3);
	}
}