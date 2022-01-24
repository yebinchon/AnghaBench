#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ioatdma_device {int /*<<< orphan*/  dma_pool; } ;
struct ioat_dma_descriptor {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  common; struct ioatdma_device* device; } ;
struct ioat_dma_chan {TYPE_1__ base; } ;
struct TYPE_4__ {int /*<<< orphan*/  phys; int /*<<< orphan*/  tx_submit; } ;
struct ioat_desc_sw {TYPE_2__ txd; struct ioat_dma_descriptor* hw; int /*<<< orphan*/  tx_list; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ioat1_tx_submit ; 
 struct ioat_desc_sw* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ioat_dma_descriptor*,int /*<<< orphan*/ ,int) ; 
 struct ioat_dma_descriptor* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct ioat_dma_descriptor*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ioat_desc_sw*,int) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static struct ioat_desc_sw *
FUNC8(struct ioat_dma_chan *ioat, gfp_t flags)
{
	struct ioat_dma_descriptor *desc;
	struct ioat_desc_sw *desc_sw;
	struct ioatdma_device *ioatdma_device;
	dma_addr_t phys;

	ioatdma_device = ioat->base.device;
	desc = FUNC4(ioatdma_device->dma_pool, flags, &phys);
	if (FUNC7(!desc))
		return NULL;

	desc_sw = FUNC2(sizeof(*desc_sw), flags);
	if (FUNC7(!desc_sw)) {
		FUNC5(ioatdma_device->dma_pool, desc, phys);
		return NULL;
	}

	FUNC3(desc, 0, sizeof(*desc));

	FUNC0(&desc_sw->tx_list);
	FUNC1(&desc_sw->txd, &ioat->base.common);
	desc_sw->txd.tx_submit = ioat1_tx_submit;
	desc_sw->hw = desc;
	desc_sw->txd.phys = phys;
	FUNC6(desc_sw, -1);

	return desc_sw;
}