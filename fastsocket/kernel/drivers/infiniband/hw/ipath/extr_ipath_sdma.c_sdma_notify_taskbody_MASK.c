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
struct list_head {int dummy; } ;
struct ipath_devdata {int /*<<< orphan*/  verbs_dev; int /*<<< orphan*/  ipath_sdma_lock; int /*<<< orphan*/  ipath_sdma_notifylist; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ipath_devdata*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct ipath_devdata *dd)
{
	unsigned long flags;
	struct list_head list;

	FUNC0(&list);

	FUNC4(&dd->ipath_sdma_lock, flags);

	FUNC3(&dd->ipath_sdma_notifylist, &list);

	FUNC5(&dd->ipath_sdma_lock, flags);

	FUNC2(dd, &list);

	/*
	 * The IB verbs layer needs to see the callback before getting
	 * the call to ipath_ib_piobufavail() because the callback
	 * handles releasing resources the next send will need.
	 * Otherwise, we could do these calls in
	 * ipath_sdma_make_progress().
	 */
	FUNC1(dd->verbs_dev);
}