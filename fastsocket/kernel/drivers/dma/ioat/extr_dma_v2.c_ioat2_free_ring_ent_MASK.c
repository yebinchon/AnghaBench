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
struct TYPE_2__ {int /*<<< orphan*/  phys; } ;
struct ioat_ring_ent {TYPE_1__ txd; int /*<<< orphan*/  hw; } ;
struct dma_chan {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  ioat2_cache ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ioat_ring_ent*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ioatdma_device* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ioat_ring_ent *desc, struct dma_chan *chan)
{
	struct ioatdma_device *dma;

	dma = FUNC2(chan->device);
	FUNC1(dma->dma_pool, desc->hw, desc->txd.phys);
	FUNC0(ioat2_cache, desc);
}