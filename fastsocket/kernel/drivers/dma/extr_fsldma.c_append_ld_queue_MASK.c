#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  prev; } ;
struct fsl_dma_chan {int feature; TYPE_3__ ld_queue; } ;
struct TYPE_5__ {int phys; } ;
struct TYPE_4__ {int /*<<< orphan*/  next_ln_addr; } ;
struct fsl_desc_sw {TYPE_2__ async_tx; TYPE_1__ hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fsl_dma_chan*,int,int) ; 
 int FSL_DMA_EOSIE ; 
 int FSL_DMA_IP_83XX ; 
 int FSL_DMA_IP_MASK ; 
 int FSL_DMA_SNEN ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 struct fsl_desc_sw* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct fsl_dma_chan *fsl_chan,
		struct fsl_desc_sw *new_desc)
{
	struct fsl_desc_sw *queue_tail = FUNC2(fsl_chan->ld_queue.prev);

	if (FUNC1(&fsl_chan->ld_queue))
		return;

	/* Link to the new descriptor physical address and
	 * Enable End-of-segment interrupt for
	 * the last link descriptor.
	 * (the previous node's next link descriptor)
	 *
	 * For FSL_DMA_IP_83xx, the snoop enable bit need be set.
	 */
	queue_tail->hw.next_ln_addr = FUNC0(fsl_chan,
			new_desc->async_tx.phys | FSL_DMA_EOSIE |
			(((fsl_chan->feature & FSL_DMA_IP_MASK)
				== FSL_DMA_IP_83XX) ? FSL_DMA_SNEN : 0), 64);
}