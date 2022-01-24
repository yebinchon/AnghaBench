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
struct s3c2410_dma_chan {scalar_t__ regs; int /*<<< orphan*/  number; } ;

/* Variables and functions */
 scalar_t__ PL080S_CH_CONFIG ; 
 scalar_t__ PL080S_CH_CONTROL2 ; 
 scalar_t__ PL080_CH_CONTROL ; 
 scalar_t__ PL080_CH_DST_ADDR ; 
 scalar_t__ PL080_CH_LLI ; 
 scalar_t__ PL080_CH_SRC_ADDR ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct s3c2410_dma_chan *chan)
{
	FUNC0("DMA%d: %08x->%08x L %08x C %08x,%08x S %08x\n",
		 chan->number,
		 FUNC1(chan->regs + PL080_CH_SRC_ADDR),
		 FUNC1(chan->regs + PL080_CH_DST_ADDR),
		 FUNC1(chan->regs + PL080_CH_LLI),
		 FUNC1(chan->regs + PL080_CH_CONTROL),
		 FUNC1(chan->regs + PL080S_CH_CONTROL2),
		 FUNC1(chan->regs + PL080S_CH_CONFIG));
}