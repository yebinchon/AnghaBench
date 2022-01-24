#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  union dm_mem_page_range {int dummy; } dm_mem_page_range ;
struct page {int dummy; } ;
struct hv_dynmem_device {int num_pages_ballooned; } ;
struct TYPE_6__ {scalar_t__ size; } ;
struct dm_balloon_response {TYPE_3__ hdr; TYPE_2__* range_array; int /*<<< orphan*/  range_count; } ;
struct TYPE_4__ {int page_cnt; int /*<<< orphan*/  start_page; } ;
struct TYPE_5__ {TYPE_1__ finfo; } ;

/* Variables and functions */
 int GFP_HIGHUSER ; 
 int PAGE_SHIFT ; 
 scalar_t__ PAGE_SIZE ; 
 int __GFP_NOMEMALLOC ; 
 int __GFP_NORETRY ; 
 int __GFP_NOWARN ; 
 struct page* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int  FUNC4(struct hv_dynmem_device *dm, int num_pages,
			 struct dm_balloon_response *bl_resp, int alloc_unit,
			 bool *alloc_error)
{
	int i = 0;
	struct page *pg;

	if (num_pages < alloc_unit)
		return 0;

	for (i = 0; (i * alloc_unit) < num_pages; i++) {
		if (bl_resp->hdr.size + sizeof(union dm_mem_page_range) >
			PAGE_SIZE)
			return i * alloc_unit;

		/*
		 * We execute this code in a thread context. Furthermore,
		 * we don't want the kernel to try too hard.
		 */
		pg = FUNC0(GFP_HIGHUSER | __GFP_NORETRY |
				__GFP_NOMEMALLOC | __GFP_NOWARN,
				FUNC1(alloc_unit << PAGE_SHIFT));

		if (!pg) {
			*alloc_error = true;
			return i * alloc_unit;
		}


		dm->num_pages_ballooned += alloc_unit;

		/*
		 * If we allocatted 2M pages; split them so we
		 * can free them in any order we get.
		 */

		if (alloc_unit != 1)
			FUNC3(pg, FUNC1(alloc_unit << PAGE_SHIFT));

		bl_resp->range_count++;
		bl_resp->range_array[i].finfo.start_page =
			FUNC2(pg);
		bl_resp->range_array[i].finfo.page_cnt = alloc_unit;
		bl_resp->hdr.size += sizeof(union dm_mem_page_range);

	}

	return num_pages;
}