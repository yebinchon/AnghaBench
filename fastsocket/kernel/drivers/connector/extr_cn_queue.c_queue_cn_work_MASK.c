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
struct work_struct {int dummy; } ;
struct cn_queue_dev {int /*<<< orphan*/  wq_requested; struct work_struct wq_creation; int /*<<< orphan*/  cn_queue; } ;
struct cn_callback_entry {struct cn_queue_dev* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct work_struct*) ; 
 int FUNC4 (struct work_struct*) ; 

int FUNC5(struct cn_callback_entry *cbq, struct work_struct *work)
{
	struct cn_queue_dev *pdev = cbq->pdev;

	if (FUNC2(pdev->cn_queue))
		return FUNC3(pdev->cn_queue, work);

	/* Don't create the connector workqueue twice */
	if (FUNC1(&pdev->wq_requested) == 1)
		FUNC4(&pdev->wq_creation);
	else
		FUNC0(&pdev->wq_requested);

	return FUNC4(work);
}