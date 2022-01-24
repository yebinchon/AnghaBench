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
struct ib_fast_reg_page_list {void* page_list; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct ib_fast_reg_page_list* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct ib_fast_reg_page_list*) ; 
 void* FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 

struct ib_fast_reg_page_list *
FUNC3(struct ib_device *ibdev, int page_list_len)
{
	unsigned size = page_list_len * sizeof(u64);
	struct ib_fast_reg_page_list *pl;

	if (size > PAGE_SIZE)
		return FUNC0(-EINVAL);

	pl = FUNC2(sizeof *pl, GFP_KERNEL);
	if (!pl)
		return FUNC0(-ENOMEM);

	pl->page_list = FUNC2(size, GFP_KERNEL);
	if (!pl->page_list)
		goto err_free;

	return pl;

err_free:
	FUNC1(pl);
	return FUNC0(-ENOMEM);
}