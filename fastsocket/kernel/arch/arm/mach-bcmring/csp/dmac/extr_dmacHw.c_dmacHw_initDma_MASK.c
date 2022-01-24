#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  dmacHw_CBLK_t ;
struct TYPE_2__ {int module; int channel; } ;

/* Variables and functions */
 int /*<<< orphan*/  chipcHw_REG_BUS_CLOCK_DMAC0 ; 
 int /*<<< orphan*/  chipcHw_REG_BUS_CLOCK_DMAC1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int dmaChannelCount_0 ; 
 int dmaChannelCount_1 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int dmacHw_MAX_CHANNEL_COUNT ; 
 TYPE_1__* dmacHw_gCblk ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,int) ; 

void FUNC4(void)
{

	uint32_t i = 0;

	dmaChannelCount_0 = FUNC2(0);
	dmaChannelCount_1 = FUNC2(1);

	/* Enable access to the DMA block */
	FUNC0(chipcHw_REG_BUS_CLOCK_DMAC0);
	FUNC0(chipcHw_REG_BUS_CLOCK_DMAC1);

	if ((dmaChannelCount_0 + dmaChannelCount_1) > dmacHw_MAX_CHANNEL_COUNT) {
		FUNC1(0);
	}

	FUNC3((void *)dmacHw_gCblk, 0,
	       sizeof(dmacHw_CBLK_t) * (dmaChannelCount_0 + dmaChannelCount_1));
	for (i = 0; i < dmaChannelCount_0; i++) {
		dmacHw_gCblk[i].module = 0;
		dmacHw_gCblk[i].channel = i;
	}
	for (i = 0; i < dmaChannelCount_1; i++) {
		dmacHw_gCblk[i + dmaChannelCount_0].module = 1;
		dmacHw_gCblk[i + dmaChannelCount_0].channel = i;
	}
}