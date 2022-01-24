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
struct txx9dmac_dev {int /*<<< orphan*/  descsize; } ;
struct TYPE_2__ {int flags; int /*<<< orphan*/  phys; } ;
struct txx9dmac_desc {TYPE_1__ txd; int /*<<< orphan*/  desc_node; } ;
struct list_head {int dummy; } ;
struct txx9dmac_chan {int /*<<< orphan*/  chan; struct list_head queue; struct txx9dmac_dev* ddev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DMA_PREP_INTERRUPT ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct txx9dmac_chan*,struct txx9dmac_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct txx9dmac_chan*) ; 
 struct txx9dmac_desc* FUNC7 (struct txx9dmac_chan*) ; 
 struct txx9dmac_desc* FUNC8 (struct txx9dmac_desc*) ; 

__attribute__((used)) static void FUNC9(struct txx9dmac_chan *dc, struct list_head *list)
{
	struct txx9dmac_dev *ddev = dc->ddev;
	struct txx9dmac_desc *desc;
	struct txx9dmac_desc *prev = NULL;

	FUNC0(!FUNC4(list));
	do {
		desc = FUNC7(dc);
		if (prev) {
			FUNC2(dc, prev, desc->txd.phys);
			FUNC3(FUNC1(&dc->chan),
				prev->txd.phys, ddev->descsize,
				DMA_TO_DEVICE);
		}
		prev = FUNC8(desc);
		FUNC5(&desc->desc_node, list);
		/* Make chain-completion interrupt happen */
		if ((desc->txd.flags & DMA_PREP_INTERRUPT) &&
		    !FUNC6(dc))
			break;
	} while (!FUNC4(&dc->queue));
}