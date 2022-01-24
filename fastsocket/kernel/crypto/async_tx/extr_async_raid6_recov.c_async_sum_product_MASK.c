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
typedef  int u8 ;
struct page {int dummy; } ;
struct dma_device {struct dma_async_tx_descriptor* (* device_prep_dma_pq ) (struct dma_chan*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,unsigned char*,size_t,int) ;struct device* dev; } ;
struct dma_chan {struct dma_device* device; } ;
struct dma_async_tx_descriptor {int dummy; } ;
struct device {int dummy; } ;
struct async_submit_ctl {int flags; int /*<<< orphan*/  depend_tx; } ;
typedef  enum dma_ctrl_flags { ____Placeholder_dma_ctrl_flags } dma_ctrl_flags ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int ASYNC_TX_FENCE ; 
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  DMA_PQ ; 
 int DMA_PREP_FENCE ; 
 int DMA_PREP_PQ_DISABLE_P ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 struct dma_chan* FUNC0 (struct async_submit_ctl*,int /*<<< orphan*/ ,struct page**,int,struct page**,int,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct dma_chan*,struct dma_async_tx_descriptor*,struct async_submit_ctl*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct page*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int* FUNC5 (struct page*) ; 
 int** raid6_gfmul ; 
 struct dma_async_tx_descriptor* FUNC6 (struct dma_chan*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,unsigned char*,size_t,int) ; 

__attribute__((used)) static struct dma_async_tx_descriptor *
FUNC7(struct page *dest, struct page **srcs, unsigned char *coef,
		  size_t len, struct async_submit_ctl *submit)
{
	struct dma_chan *chan = FUNC0(submit, DMA_PQ,
						      &dest, 1, srcs, 2, len);
	struct dma_device *dma = chan ? chan->device : NULL;
	const u8 *amul, *bmul;
	u8 ax, bx;
	u8 *a, *b, *c;

	if (dma) {
		dma_addr_t dma_dest[2];
		dma_addr_t dma_src[2];
		struct device *dev = dma->dev;
		struct dma_async_tx_descriptor *tx;
		enum dma_ctrl_flags dma_flags = DMA_PREP_PQ_DISABLE_P;

		if (submit->flags & ASYNC_TX_FENCE)
			dma_flags |= DMA_PREP_FENCE;
		dma_dest[1] = FUNC3(dev, dest, 0, len, DMA_BIDIRECTIONAL);
		dma_src[0] = FUNC3(dev, srcs[0], 0, len, DMA_TO_DEVICE);
		dma_src[1] = FUNC3(dev, srcs[1], 0, len, DMA_TO_DEVICE);
		tx = dma->device_prep_dma_pq(chan, dma_dest, dma_src, 2, coef,
					     len, dma_flags);
		if (tx) {
			FUNC2(chan, tx, submit);
			return tx;
		}

		/* could not get a descriptor, unmap and fall through to
		 * the synchronous path
		 */
		FUNC4(dev, dma_dest[1], len, DMA_BIDIRECTIONAL);
		FUNC4(dev, dma_src[0], len, DMA_TO_DEVICE);
		FUNC4(dev, dma_src[1], len, DMA_TO_DEVICE);
	}

	/* run the operation synchronously */
	FUNC1(&submit->depend_tx);
	amul = raid6_gfmul[coef[0]];
	bmul = raid6_gfmul[coef[1]];
	a = FUNC5(srcs[0]);
	b = FUNC5(srcs[1]);
	c = FUNC5(dest);

	while (len--) {
		ax    = amul[*a++];
		bx    = bmul[*b++];
		*c++ = ax ^ bx;
	}

	return NULL;
}