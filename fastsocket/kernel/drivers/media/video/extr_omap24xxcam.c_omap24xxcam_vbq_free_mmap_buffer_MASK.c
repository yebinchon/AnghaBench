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
struct videobuf_dmabuf {int sglen; int /*<<< orphan*/ * sglist; } ;
struct videobuf_buffer {int dummy; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 size_t FUNC4 (int /*<<< orphan*/ *) ; 
 struct page* FUNC5 (int /*<<< orphan*/ *) ; 
 struct videobuf_dmabuf* FUNC6 (struct videobuf_buffer*) ; 

__attribute__((used)) static void FUNC7(struct videobuf_buffer *vb)
{
	struct videobuf_dmabuf *dma = FUNC6(vb);
	size_t alloc_size;
	struct page *page;
	int i;

	if (dma->sglist == NULL)
		return;

	i = dma->sglen;
	while (i) {
		i--;
		alloc_size = FUNC4(&dma->sglist[i]);
		page = FUNC5(&dma->sglist[i]);
		do {
			FUNC0(page++);
		} while (alloc_size -= PAGE_SIZE);
		FUNC1(FUNC5(&dma->sglist[i]),
			     FUNC2(FUNC4(&dma->sglist[i])));
	}

	FUNC3(dma->sglist);
	dma->sglist = NULL;
}