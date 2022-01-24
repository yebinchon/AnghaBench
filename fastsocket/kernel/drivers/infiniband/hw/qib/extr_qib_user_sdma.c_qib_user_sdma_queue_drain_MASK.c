#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct qib_user_sdma_queue {int /*<<< orphan*/  lock; int /*<<< orphan*/  sent; } ;
struct qib_pportdata {struct qib_devdata* dd; } ;
struct qib_devdata {TYPE_1__* pcidev; } ;
struct list_head {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct list_head*) ; 
 int QIB_USER_SDMA_DRAIN_TIMEOUT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct qib_devdata*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct qib_user_sdma_queue*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC8 (struct qib_pportdata*) ; 
 int /*<<< orphan*/  FUNC9 (struct qib_pportdata*,struct qib_user_sdma_queue*) ; 

void FUNC10(struct qib_pportdata *ppd,
			       struct qib_user_sdma_queue *pq)
{
	struct qib_devdata *dd = ppd->dd;
	int i;

	if (!pq)
		return;

	for (i = 0; i < QIB_USER_SDMA_DRAIN_TIMEOUT; i++) {
		FUNC4(&pq->lock);
		if (FUNC1(&pq->sent)) {
			FUNC5(&pq->lock);
			break;
		}
		FUNC8(ppd);
		FUNC9(ppd, pq);
		FUNC5(&pq->lock);
		FUNC3(10);
	}

	if (!FUNC1(&pq->sent)) {
		struct list_head free_list;

		FUNC6(dd, "user sdma lists not empty: forcing!\n");
		FUNC0(&free_list);
		FUNC4(&pq->lock);
		FUNC2(&pq->sent, &free_list);
		FUNC7(&dd->pcidev->dev, pq, &free_list);
		FUNC5(&pq->lock);
	}
}