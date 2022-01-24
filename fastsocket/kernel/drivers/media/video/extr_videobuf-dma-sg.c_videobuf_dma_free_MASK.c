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
struct videobuf_dmabuf {int nr_pages; int /*<<< orphan*/  direction; scalar_t__ bus_addr; int /*<<< orphan*/ * vaddr; int /*<<< orphan*/ * pages; int /*<<< orphan*/  sglen; int /*<<< orphan*/  magic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMA_NONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAGIC_DMABUF ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct videobuf_dmabuf *dma)
{
	int i;
	FUNC1(dma->magic, MAGIC_DMABUF);
	FUNC0(dma->sglen);

	if (dma->pages) {
		for (i = 0; i < dma->nr_pages; i++)
			FUNC3(dma->pages[i]);
		FUNC2(dma->pages);
		dma->pages = NULL;
	}

	FUNC4(dma->vaddr);
	dma->vaddr = NULL;

	if (dma->bus_addr)
		dma->bus_addr = 0;
	dma->direction = DMA_NONE;

	return 0;
}