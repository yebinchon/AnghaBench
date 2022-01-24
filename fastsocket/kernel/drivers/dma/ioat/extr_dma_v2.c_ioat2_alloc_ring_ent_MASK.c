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
struct ioatdma_device {int /*<<< orphan*/  dma_pool; } ;
struct TYPE_2__ {int /*<<< orphan*/  phys; int /*<<< orphan*/  tx_submit; } ;
struct ioat_ring_ent {TYPE_1__ txd; struct ioat_ring_ent* hw; } ;
struct ioat_dma_descriptor {TYPE_1__ txd; struct ioat_dma_descriptor* hw; } ;
struct dma_chan {int /*<<< orphan*/  device; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,struct dma_chan*) ; 
 int /*<<< orphan*/  ioat2_cache ; 
 int /*<<< orphan*/  ioat2_tx_submit_unlock ; 
 struct ioat_ring_ent* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ioat_ring_ent*,int /*<<< orphan*/ ,int) ; 
 struct ioat_ring_ent* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct ioat_ring_ent*,int /*<<< orphan*/ ) ; 
 struct ioatdma_device* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ioat_ring_ent *FUNC6(struct dma_chan *chan, gfp_t flags)
{
	struct ioat_dma_descriptor *hw;
	struct ioat_ring_ent *desc;
	struct ioatdma_device *dma;
	dma_addr_t phys;

	dma = FUNC5(chan->device);
	hw = FUNC3(dma->dma_pool, flags, &phys);
	if (!hw)
		return NULL;
	FUNC2(hw, 0, sizeof(*hw));

	desc = FUNC1(ioat2_cache, flags);
	if (!desc) {
		FUNC4(dma->dma_pool, hw, phys);
		return NULL;
	}
	FUNC2(desc, 0, sizeof(*desc));

	FUNC0(&desc->txd, chan);
	desc->txd.tx_submit = ioat2_tx_submit_unlock;
	desc->hw = hw;
	desc->txd.phys = phys;
	return desc;
}