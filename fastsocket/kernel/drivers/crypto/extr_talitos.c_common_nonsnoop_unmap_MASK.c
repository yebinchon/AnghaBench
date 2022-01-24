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
struct TYPE_2__ {int /*<<< orphan*/ * ptr; } ;
struct talitos_edesc {scalar_t__ dma_len; int /*<<< orphan*/  dma_link_tbl; TYPE_1__ desc; } ;
struct device {int dummy; } ;
struct ablkcipher_request {int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,struct talitos_edesc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct device *dev,
				  struct talitos_edesc *edesc,
				  struct ablkcipher_request *areq)
{
	FUNC2(dev, &edesc->desc.ptr[5], DMA_FROM_DEVICE);
	FUNC2(dev, &edesc->desc.ptr[2], DMA_TO_DEVICE);
	FUNC2(dev, &edesc->desc.ptr[1], DMA_TO_DEVICE);

	FUNC1(dev, edesc, areq->src, areq->dst);

	if (edesc->dma_len)
		FUNC0(dev, edesc->dma_link_tbl, edesc->dma_len,
				 DMA_BIDIRECTIONAL);
}