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
struct TYPE_2__ {scalar_t__ reg_base; } ;
struct ioat_dma_chan {TYPE_1__ base; } ;

/* Variables and functions */
 scalar_t__ IOAT_CHANCTRL_OFFSET ; 
 int /*<<< orphan*/  IOAT_CHANCTRL_RUN ; 
 int /*<<< orphan*/  FUNC0 (struct ioat_dma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC2(unsigned long data)
{
	struct ioat_dma_chan *chan = (void *)data;

	FUNC0(chan);
	FUNC1(IOAT_CHANCTRL_RUN, chan->base.reg_base + IOAT_CHANCTRL_OFFSET);
}