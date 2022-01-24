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
struct TYPE_3__ {int null; int int_en; int compl_write; } ;
struct ioat_dma_descriptor {scalar_t__ next; scalar_t__ dst_addr; scalar_t__ src_addr; int /*<<< orphan*/  size; TYPE_1__ ctl_f; scalar_t__ ctl; } ;
struct ioat_chan_common {int dummy; } ;
struct ioat_dma_chan {int /*<<< orphan*/  desc_lock; int /*<<< orphan*/  used_desc; struct ioat_chan_common base; } ;
struct TYPE_4__ {int /*<<< orphan*/  phys; } ;
struct ioat_desc_sw {TYPE_2__ txd; int /*<<< orphan*/  node; struct ioat_dma_descriptor* hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  NULL_DESC_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ioat_dma_chan*,struct ioat_desc_sw*) ; 
 struct ioat_desc_sw* FUNC3 (struct ioat_dma_chan*) ; 
 int /*<<< orphan*/  FUNC4 (struct ioat_dma_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ioat_chan_common*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct ioat_chan_common*) ; 

__attribute__((used)) static void FUNC10(struct ioat_dma_chan *ioat)
{
	struct ioat_chan_common *chan = &ioat->base;
	struct ioat_desc_sw *desc;
	struct ioat_dma_descriptor *hw;

	FUNC7(&ioat->desc_lock);

	desc = FUNC3(ioat);

	if (!desc) {
		FUNC1(FUNC9(chan),
			"Unable to start null desc - get next desc failed\n");
		FUNC8(&ioat->desc_lock);
		return;
	}

	hw = desc->hw;
	hw->ctl = 0;
	hw->ctl_f.null = 1;
	hw->ctl_f.int_en = 1;
	hw->ctl_f.compl_write = 1;
	/* set size to non-zero value (channel returns error when size is 0) */
	hw->size = NULL_DESC_BUFFER_SIZE;
	hw->src_addr = 0;
	hw->dst_addr = 0;
	FUNC0(&desc->txd);
	hw->next = 0;
	FUNC6(&desc->node, &ioat->used_desc);
	FUNC2(ioat, desc);

	FUNC4(ioat, desc->txd.phys);
	FUNC5(chan);
	FUNC8(&ioat->desc_lock);
}