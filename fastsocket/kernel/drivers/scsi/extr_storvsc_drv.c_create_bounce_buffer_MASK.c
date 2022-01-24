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
 int FUNC0 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int PAGE_SHIFT ; 
 unsigned int PAGE_SIZE ; 
 int WRITE_TYPE ; 
 struct page* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct scatterlist*,int) ; 
 struct scatterlist* FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct scatterlist*,struct page*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct scatterlist *FUNC6(struct scatterlist *sgl,
						unsigned int sg_count,
						unsigned int len,
						int write)
{
	int i;
	int num_pages;
	struct scatterlist *bounce_sgl;
	struct page *page_buf;
	unsigned int buf_len = ((write == WRITE_TYPE) ? 0 : PAGE_SIZE);

	num_pages = FUNC0(len, PAGE_SIZE) >> PAGE_SHIFT;

	bounce_sgl = FUNC3(num_pages, sizeof(struct scatterlist), GFP_ATOMIC);
	if (!bounce_sgl)
		return NULL;

	FUNC4(bounce_sgl, num_pages);
	for (i = 0; i < num_pages; i++) {
		page_buf = FUNC1(GFP_ATOMIC);
		if (!page_buf)
			goto cleanup;
		FUNC5(&bounce_sgl[i], page_buf, buf_len, 0);
	}

	return bounce_sgl;

cleanup:
	FUNC2(bounce_sgl, num_pages);
	return NULL;
}