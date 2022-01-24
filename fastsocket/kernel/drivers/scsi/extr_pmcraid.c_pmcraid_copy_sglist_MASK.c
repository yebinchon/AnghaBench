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
struct scatterlist {int length; } ;
struct pmcraid_sglist {int order; struct scatterlist* scatterlist; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int DMA_TO_DEVICE ; 
 int EFAULT ; 
 int PAGE_SIZE ; 
 int FUNC0 (void*,void*,int) ; 
 int FUNC1 (void*,void*,int) ; 
 void* FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 struct page* FUNC5 (struct scatterlist*) ; 

__attribute__((used)) static int FUNC6(
	struct pmcraid_sglist *sglist,
	unsigned long buffer,
	u32 len,
	int direction
)
{
	struct scatterlist *scatterlist;
	void *kaddr;
	int bsize_elem;
	int i;
	int rc = 0;

	/* Determine the actual number of bytes per element */
	bsize_elem = PAGE_SIZE * (1 << sglist->order);

	scatterlist = sglist->scatterlist;

	for (i = 0; i < (len / bsize_elem); i++, buffer += bsize_elem) {
		struct page *page = FUNC5(&scatterlist[i]);

		kaddr = FUNC2(page);
		if (direction == DMA_TO_DEVICE)
			rc = FUNC0(kaddr,
					      (void *)buffer,
					      bsize_elem);
		else
			rc = FUNC1((void *)buffer, kaddr, bsize_elem);

		FUNC3(page);

		if (rc) {
			FUNC4("failed to copy user data into sg list\n");
			return -EFAULT;
		}

		scatterlist[i].length = bsize_elem;
	}

	if (len % bsize_elem) {
		struct page *page = FUNC5(&scatterlist[i]);

		kaddr = FUNC2(page);

		if (direction == DMA_TO_DEVICE)
			rc = FUNC0(kaddr,
					      (void *)buffer,
					      len % bsize_elem);
		else
			rc = FUNC1((void *)buffer,
					    kaddr,
					    len % bsize_elem);

		FUNC3(page);

		scatterlist[i].length = len % bsize_elem;
	}

	if (rc) {
		FUNC4("failed to copy user data into sg list\n");
		rc = -EFAULT;
	}

	return rc;
}