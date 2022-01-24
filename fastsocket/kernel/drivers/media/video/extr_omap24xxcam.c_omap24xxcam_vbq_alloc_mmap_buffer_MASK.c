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
struct videobuf_dmabuf {int /*<<< orphan*/  direction; scalar_t__ sglen; scalar_t__ nr_pages; int /*<<< orphan*/ * sglist; } ;
struct videobuf_buffer {size_t bsize; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 int PAGE_SHIFT ; 
 unsigned int PAGE_SIZE ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct page* FUNC1 (int,unsigned int) ; 
 unsigned int FUNC2 (size_t) ; 
 int /*<<< orphan*/ * FUNC3 (int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct videobuf_buffer*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct page*,unsigned int,int /*<<< orphan*/ ) ; 
 struct videobuf_dmabuf* FUNC8 (struct videobuf_buffer*) ; 

__attribute__((used)) static int FUNC9(struct videobuf_buffer *vb)
{
	unsigned int order;
	size_t alloc_size, size = vb->bsize; /* vb->bsize is page aligned */
	struct page *page;
	int max_pages, err = 0, i = 0;
	struct videobuf_dmabuf *dma = FUNC8(vb);

	/*
	 * allocate maximum size scatter-gather list. Note this is
	 * overhead. We may not use as many entries as we allocate
	 */
	max_pages = vb->bsize >> PAGE_SHIFT;
	dma->sglist = FUNC3(max_pages, sizeof(*dma->sglist), GFP_KERNEL);
	if (dma->sglist == NULL) {
		err = -ENOMEM;
		goto out;
	}

	while (size) {
		order = FUNC2(size);
		/*
		 * do not over-allocate even if we would get larger
		 * contiguous chunk that way
		 */
		if ((PAGE_SIZE << order) > size)
			order--;

		/* try to allocate as many contiguous pages as possible */
		page = FUNC1(GFP_KERNEL | GFP_DMA, order);
		/* if allocation fails, try to allocate smaller amount */
		while (page == NULL) {
			order--;
			page = FUNC1(GFP_KERNEL | GFP_DMA, order);
			if (page == NULL && !order) {
				err = -ENOMEM;
				goto out;
			}
		}
		size -= (PAGE_SIZE << order);

		/* append allocated chunk of pages into scatter-gather list */
		FUNC7(&dma->sglist[i], page, PAGE_SIZE << order, 0);
		dma->sglen++;
		i++;

		alloc_size = (PAGE_SIZE << order);

		/* clear pages before giving them to user space */
		FUNC4(FUNC6(page), 0, alloc_size);

		/* mark allocated pages reserved */
		do {
			FUNC0(page++);
		} while (alloc_size -= PAGE_SIZE);
	}
	/*
	 * REVISIT: not fully correct to assign nr_pages == sglen but
	 * video-buf is passing nr_pages for e.g. unmap_sg calls
	 */
	dma->nr_pages = dma->sglen;
	dma->direction = PCI_DMA_FROMDEVICE;

	return 0;

out:
	FUNC5(vb);
	return err;
}