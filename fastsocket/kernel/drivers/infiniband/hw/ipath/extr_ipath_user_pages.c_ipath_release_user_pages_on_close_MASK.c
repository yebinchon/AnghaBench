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
struct page {int dummy; } ;
struct mm_struct {int dummy; } ;
struct ipath_user_pages_work {size_t num_pages; int /*<<< orphan*/  work; struct mm_struct* mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct page**,size_t,int) ; 
 int /*<<< orphan*/  current ; 
 struct mm_struct* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ib_wq ; 
 struct ipath_user_pages_work* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  user_pages_account ; 

void FUNC6(struct page **p, size_t num_pages)
{
	struct ipath_user_pages_work *work;
	struct mm_struct *mm;

	FUNC1(p, num_pages, 1);

	mm = FUNC2(current);
	if (!mm)
		return;

	work = FUNC3(sizeof(*work), GFP_KERNEL);
	if (!work)
		goto bail_mm;

	FUNC0(&work->work, user_pages_account);
	work->mm = mm;
	work->num_pages = num_pages;

	FUNC5(ib_wq, &work->work);
	return;

bail_mm:
	FUNC4(mm);
	return;
}