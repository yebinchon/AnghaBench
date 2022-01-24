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
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int ENOMEM ; 
 int PAGE_SIZE ; 
 struct page* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct scatterlist*,struct page*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct scatterlist *mem, int order, gfp_t gfp_mask)
{
	struct page *page;

	page = FUNC0(gfp_mask, order);
	if (!page)
		return -ENOMEM;

	FUNC1(mem, page, PAGE_SIZE << order, 0);
	return 0;
}