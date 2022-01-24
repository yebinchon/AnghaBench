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
 scalar_t__ JAZZ_R4030_CHNL_ADDR ; 
 int /*<<< orphan*/  FUNC0 (char*,int,long) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,long) ; 
 scalar_t__ vdma_debug ; 

void FUNC2(int channel, long addr)
{
	if (vdma_debug)
		FUNC0("vdma_set_addr: channel %d, addr %lx\n", channel,
		       addr);

	FUNC1(JAZZ_R4030_CHNL_ADDR + (channel << 5), addr);
}