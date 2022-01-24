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
typedef  int /*<<< orphan*/  u64 ;
struct ib_fast_reg_page_list {int max_page_list_len; int /*<<< orphan*/ * page_list; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct ib_fast_reg_page_list* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct ib_fast_reg_page_list* FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ib_fast_reg_page_list *FUNC2(
					struct ib_device *device,
					int page_list_len)
{
	struct ib_fast_reg_page_list *page_list;

	page_list = FUNC1(sizeof *page_list + page_list_len * sizeof(u64),
			    GFP_KERNEL);
	if (!page_list)
		return FUNC0(-ENOMEM);

	page_list->page_list = (u64 *)(page_list + 1);
	page_list->max_page_list_len = page_list_len;

	return page_list;
}