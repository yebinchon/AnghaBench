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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct scatterlist {int length; } ;
struct page {int dummy; } ;
struct ipr_sglist {int order; int buffer_len; struct scatterlist* scatterlist; } ;

/* Variables and functions */
 int PAGE_SIZE ; 
 int /*<<< orphan*/  ipr_trace ; 
 void* FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ *,int) ; 
 struct page* FUNC3 (struct scatterlist*) ; 

__attribute__((used)) static int FUNC4(struct ipr_sglist *sglist,
				 u8 *buffer, u32 len)
{
	int bsize_elem, i, result = 0;
	struct scatterlist *scatterlist;
	void *kaddr;

	/* Determine the actual number of bytes per element */
	bsize_elem = PAGE_SIZE * (1 << sglist->order);

	scatterlist = sglist->scatterlist;

	for (i = 0; i < (len / bsize_elem); i++, buffer += bsize_elem) {
		struct page *page = FUNC3(&scatterlist[i]);

		kaddr = FUNC0(page);
		FUNC2(kaddr, buffer, bsize_elem);
		FUNC1(page);

		scatterlist[i].length = bsize_elem;

		if (result != 0) {
			ipr_trace;
			return result;
		}
	}

	if (len % bsize_elem) {
		struct page *page = FUNC3(&scatterlist[i]);

		kaddr = FUNC0(page);
		FUNC2(kaddr, buffer, len % bsize_elem);
		FUNC1(page);

		scatterlist[i].length = len % bsize_elem;
	}

	sglist->buffer_len = len;
	return result;
}