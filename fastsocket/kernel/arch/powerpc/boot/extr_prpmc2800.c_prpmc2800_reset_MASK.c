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
typedef  int u32 ;

/* Variables and functions */
 scalar_t__ MV64x60_GPP_IO_CNTL ; 
 scalar_t__ MV64x60_GPP_LEVEL_CNTL ; 
 scalar_t__ MV64x60_GPP_VALUE_SET ; 
 scalar_t__ MV64x60_MPP_CNTL_0 ; 
 scalar_t__ MV64x60_MPP_CNTL_2 ; 
 scalar_t__ bridge_base ; 
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(void)
{
	u32 temp;

	FUNC2(5000000);

	if (bridge_base != 0) {
		temp = FUNC0((u32 *)(bridge_base + MV64x60_MPP_CNTL_0));
		temp &= 0xFFFF0FFF;
		FUNC1((u32 *)(bridge_base + MV64x60_MPP_CNTL_0), temp);

		temp = FUNC0((u32 *)(bridge_base + MV64x60_GPP_LEVEL_CNTL));
		temp |= 0x00000004;
		FUNC1((u32 *)(bridge_base + MV64x60_GPP_LEVEL_CNTL), temp);

		temp = FUNC0((u32 *)(bridge_base + MV64x60_GPP_IO_CNTL));
		temp |= 0x00000004;
		FUNC1((u32 *)(bridge_base + MV64x60_GPP_IO_CNTL), temp);

		temp = FUNC0((u32 *)(bridge_base + MV64x60_MPP_CNTL_2));
		temp &= 0xFFFF0FFF;
		FUNC1((u32 *)(bridge_base + MV64x60_MPP_CNTL_2), temp);

		temp = FUNC0((u32 *)(bridge_base + MV64x60_GPP_LEVEL_CNTL));
		temp |= 0x00080000;
		FUNC1((u32 *)(bridge_base + MV64x60_GPP_LEVEL_CNTL), temp);

		temp = FUNC0((u32 *)(bridge_base + MV64x60_GPP_IO_CNTL));
		temp |= 0x00080000;
		FUNC1((u32 *)(bridge_base + MV64x60_GPP_IO_CNTL), temp);

		FUNC1((u32 *)(bridge_base + MV64x60_GPP_VALUE_SET),
				0x00080004);
	}

	for (;;);
}