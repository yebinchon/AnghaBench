#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct videobuf_dmabuf {int direction; unsigned long offset; unsigned long size; unsigned long nr_pages; int /*<<< orphan*/ * pages; } ;
struct page {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  DMA_FROM_DEVICE 129 
#define  DMA_TO_DEVICE 128 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned long PAGE_MASK ; 
 unsigned long PAGE_SHIFT ; 
 int READ ; 
 int WRITE ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int,int,...) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,unsigned long,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct videobuf_dmabuf *dma,
			int direction, unsigned long data, unsigned long size)
{
	unsigned long first, last;
	int err, rw = 0;

	dma->direction = direction;
	switch (dma->direction) {
	case DMA_FROM_DEVICE:
		rw = READ;
		break;
	case DMA_TO_DEVICE:
		rw = WRITE;
		break;
	default:
		FUNC0();
	}

	first = (data          & PAGE_MASK) >> PAGE_SHIFT;
	last  = ((data+size-1) & PAGE_MASK) >> PAGE_SHIFT;
	dma->offset = data & ~PAGE_MASK;
	dma->size = size;
	dma->nr_pages = last-first+1;
	dma->pages = FUNC3(dma->nr_pages * sizeof(struct page *), GFP_KERNEL);
	if (NULL == dma->pages)
		return -ENOMEM;

	FUNC1(1, "init user [0x%lx+0x%lx => %d pages]\n",
		data, size, dma->nr_pages);

	err = FUNC2(current, current->mm,
			     data & PAGE_MASK, dma->nr_pages,
			     rw == READ, 1, /* force */
			     dma->pages, NULL);

	if (err != dma->nr_pages) {
		dma->nr_pages = (err >= 0) ? err : 0;
		FUNC1(1, "get_user_pages: err=%d [%d]\n", err, dma->nr_pages);
		return err < 0 ? err : -EINVAL;
	}
	return 0;
}