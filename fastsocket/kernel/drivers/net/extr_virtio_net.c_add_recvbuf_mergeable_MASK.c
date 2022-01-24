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
struct virtnet_info {int /*<<< orphan*/  rvq; } ;
struct scatterlist {int dummy; } ;
struct page {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct page* FUNC0 (struct virtnet_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct virtnet_info*,struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct scatterlist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct scatterlist*,int /*<<< orphan*/ ,int,struct page*) ; 

__attribute__((used)) static int FUNC5(struct virtnet_info *vi, gfp_t gfp)
{
	struct page *page;
	struct scatterlist sg;
	int err;

	page = FUNC0(vi, gfp);
	if (!page)
		return -ENOMEM;

	FUNC3(&sg, FUNC2(page), PAGE_SIZE);

	err = FUNC4(vi->rvq, &sg, 0, 1, page);
	if (err < 0)
		FUNC1(vi, page);

	return err;
}