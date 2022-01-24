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
struct scatterlist {int dummy; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct scatterlist*,struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct scatterlist*) ; 
 struct page* FUNC5 (unsigned char*) ; 
 struct scatterlist* FUNC6 (int) ; 

__attribute__((used)) static struct scatterlist *FUNC7(unsigned char *virt,
						  int nr_pages)
{
	struct scatterlist *sglist;
	struct page *pg;
	int i;

	sglist = FUNC6(nr_pages * sizeof(*sglist));
	if (NULL == sglist)
		return NULL;
	FUNC2(sglist, nr_pages);
	for (i = 0; i < nr_pages; i++, virt += PAGE_SIZE) {
		pg = FUNC5(virt);
		if (NULL == pg)
			goto err;
		FUNC0(FUNC1(pg));
		FUNC3(&sglist[i], pg, PAGE_SIZE, 0);
	}
	return sglist;

err:
	FUNC4(sglist);
	return NULL;
}