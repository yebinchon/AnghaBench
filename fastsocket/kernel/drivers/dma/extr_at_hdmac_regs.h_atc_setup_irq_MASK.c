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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  chan_id; int /*<<< orphan*/  device; } ;
struct at_dma_chan {TYPE_1__ chan_common; } ;
struct at_dma {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EBCIDR ; 
 int /*<<< orphan*/  EBCIER ; 
 int /*<<< orphan*/  FUNC2 (struct at_dma*,int /*<<< orphan*/ ,int) ; 
 struct at_dma* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct at_dma_chan *atchan, int on)
{
	struct at_dma	*atdma = FUNC3(atchan->chan_common.device);
	u32		ebci;

	/* enable interrupts on buffer chain completion & error */
	ebci =    FUNC0(atchan->chan_common.chan_id)
		| FUNC1(atchan->chan_common.chan_id);
	if (on)
		FUNC2(atdma, EBCIER, ebci);
	else
		FUNC2(atdma, EBCIDR, ebci);
}