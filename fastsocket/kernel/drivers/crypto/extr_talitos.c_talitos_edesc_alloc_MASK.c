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
typedef  int u32 ;
struct talitos_ptr {int dummy; } ;
struct talitos_edesc {int src_nents; int dst_nents; int src_is_chained; int dst_is_chained; int dma_len; int /*<<< orphan*/ * link_tbl; int /*<<< orphan*/  dma_link_tbl; } ;
struct scatterlist {int dummy; } ;
struct device {int dummy; } ;
typedef  int gfp_t ;

/* Variables and functions */
 int CRYPTO_TFM_REQ_MAY_SLEEP ; 
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct talitos_edesc* FUNC0 (int /*<<< orphan*/ ) ; 
 int GFP_ATOMIC ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 unsigned int TALITOS_MAX_DATA_LEN ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct talitos_edesc* FUNC3 (int,int) ; 
 int FUNC4 (struct scatterlist*,unsigned int,int*) ; 

__attribute__((used)) static struct talitos_edesc *FUNC5(struct device *dev,
						 struct scatterlist *src,
						 struct scatterlist *dst,
						 unsigned int cryptlen,
						 unsigned int authsize,
						 int icv_stashing,
						 u32 cryptoflags)
{
	struct talitos_edesc *edesc;
	int src_nents, dst_nents, alloc_len, dma_len;
	int src_chained, dst_chained = 0;
	gfp_t flags = cryptoflags & CRYPTO_TFM_REQ_MAY_SLEEP ? GFP_KERNEL :
		      GFP_ATOMIC;

	if (cryptlen + authsize > TALITOS_MAX_DATA_LEN) {
		FUNC1(dev, "length exceeds h/w max limit\n");
		return FUNC0(-EINVAL);
	}

	src_nents = FUNC4(src, cryptlen + authsize, &src_chained);
	src_nents = (src_nents == 1) ? 0 : src_nents;

	if (dst == src) {
		dst_nents = src_nents;
	} else {
		dst_nents = FUNC4(dst, cryptlen + authsize, &dst_chained);
		dst_nents = (dst_nents == 1) ? 0 : dst_nents;
	}

	/*
	 * allocate space for base edesc plus the link tables,
	 * allowing for two separate entries for ICV and generated ICV (+ 2),
	 * and the ICV data itself
	 */
	alloc_len = sizeof(struct talitos_edesc);
	if (src_nents || dst_nents) {
		dma_len = (src_nents + dst_nents + 2) *
				 sizeof(struct talitos_ptr) + authsize;
		alloc_len += dma_len;
	} else {
		dma_len = 0;
		alloc_len += icv_stashing ? authsize : 0;
	}

	edesc = FUNC3(alloc_len, GFP_DMA | flags);
	if (!edesc) {
		FUNC1(dev, "could not allocate edescriptor\n");
		return FUNC0(-ENOMEM);
	}

	edesc->src_nents = src_nents;
	edesc->dst_nents = dst_nents;
	edesc->src_is_chained = src_chained;
	edesc->dst_is_chained = dst_chained;
	edesc->dma_len = dma_len;
	edesc->dma_link_tbl = FUNC2(dev, &edesc->link_tbl[0],
					     edesc->dma_len, DMA_BIDIRECTIONAL);

	return edesc;
}