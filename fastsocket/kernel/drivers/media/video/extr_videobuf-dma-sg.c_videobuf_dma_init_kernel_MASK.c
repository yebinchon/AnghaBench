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
struct videobuf_dmabuf {int direction; int nr_pages; int /*<<< orphan*/ * vaddr; } ;

/* Variables and functions */
 int ENOMEM ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned long,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 

int FUNC3(struct videobuf_dmabuf *dma, int direction,
			     int nr_pages)
{
	FUNC0(1, "init kernel [%d pages]\n", nr_pages);

	dma->direction = direction;
	dma->vaddr = FUNC2(nr_pages << PAGE_SHIFT);
	if (NULL == dma->vaddr) {
		FUNC0(1, "vmalloc_32(%d pages) failed\n", nr_pages);
		return -ENOMEM;
	}

	FUNC0(1, "vmalloc is at addr 0x%08lx, size=%d\n",
				(unsigned long)dma->vaddr,
				nr_pages << PAGE_SHIFT);

	FUNC1(dma->vaddr, 0, nr_pages << PAGE_SHIFT);
	dma->nr_pages = nr_pages;

	return 0;
}