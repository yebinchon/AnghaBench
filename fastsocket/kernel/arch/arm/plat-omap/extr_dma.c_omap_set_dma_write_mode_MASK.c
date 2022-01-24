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
typedef  enum omap_dma_write_mode { ____Placeholder_omap_dma_write_mode } omap_dma_write_mode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

void FUNC4(int lch, enum omap_dma_write_mode mode)
{
	if (FUNC1()) {
		u32 csdp;

		csdp = FUNC2(FUNC0(lch));
		csdp &= ~(0x3 << 16);
		csdp |= (mode << 16);
		FUNC3(csdp, FUNC0(lch));
	}
}