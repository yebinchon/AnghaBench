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
typedef  int /*<<< orphan*/  u16 ;
struct dma_async_tx_descriptor {unsigned long flags; } ;
struct ioat_ring_ent {int len; struct dma_async_tx_descriptor txd; struct ioat_dma_descriptor* hw; } ;
struct TYPE_2__ {int null; int int_en; int fence; int compl_write; } ;
struct ioat_dma_descriptor {scalar_t__ dst_addr; scalar_t__ src_addr; int /*<<< orphan*/  size; TYPE_1__ ctl_f; scalar_t__ ctl; } ;
struct ioat2_dma_chan {int dummy; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 unsigned long DMA_PREP_FENCE ; 
 int /*<<< orphan*/  NULL_DESC_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct ioat2_dma_chan*,struct ioat_ring_ent*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,struct ioat2_dma_chan*,int) ; 
 struct ioat_ring_ent* FUNC2 (struct ioat2_dma_chan*,int /*<<< orphan*/ ) ; 
 struct ioat2_dma_chan* FUNC3 (struct dma_chan*) ; 

__attribute__((used)) static struct dma_async_tx_descriptor *
FUNC4(struct dma_chan *c, unsigned long flags)
{
	struct ioat2_dma_chan *ioat = FUNC3(c);
	struct ioat_ring_ent *desc;
	struct ioat_dma_descriptor *hw;
	u16 idx;

	if (FUNC1(&idx, ioat, 1) == 0)
		desc = FUNC2(ioat, idx);
	else
		return NULL;

	hw = desc->hw;
	hw->ctl = 0;
	hw->ctl_f.null = 1;
	hw->ctl_f.int_en = 1;
	hw->ctl_f.fence = !!(flags & DMA_PREP_FENCE);
	hw->ctl_f.compl_write = 1;
	hw->size = NULL_DESC_BUFFER_SIZE;
	hw->src_addr = 0;
	hw->dst_addr = 0;

	desc->txd.flags = flags;
	desc->len = 1;

	FUNC0(ioat, desc);

	/* we leave the channel locked to ensure in order submission */
	return &desc->txd;
}