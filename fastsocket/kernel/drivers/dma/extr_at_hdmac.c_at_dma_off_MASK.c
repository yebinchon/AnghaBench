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
struct at_dma {int all_chan_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHSR ; 
 int /*<<< orphan*/  EBCIDR ; 
 int /*<<< orphan*/  EN ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (struct at_dma*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct at_dma*,int /*<<< orphan*/ ,long) ; 

__attribute__((used)) static void FUNC3(struct at_dma *atdma)
{
	FUNC2(atdma, EN, 0);

	/* disable all interrupts */
	FUNC2(atdma, EBCIDR, -1L);

	/* confirm that all channels are disabled */
	while (FUNC1(atdma, CHSR) & atdma->all_chan_mask)
		FUNC0();
}