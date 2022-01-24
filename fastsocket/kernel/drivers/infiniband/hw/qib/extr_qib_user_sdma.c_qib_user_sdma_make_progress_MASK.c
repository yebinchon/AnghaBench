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
struct qib_user_sdma_queue {int /*<<< orphan*/  lock; } ;
struct qib_pportdata {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct qib_pportdata*) ; 
 int FUNC3 (struct qib_pportdata*,struct qib_user_sdma_queue*) ; 

int FUNC4(struct qib_pportdata *ppd,
				struct qib_user_sdma_queue *pq)
{
	int ret = 0;

	FUNC0(&pq->lock);
	FUNC2(ppd);
	ret = FUNC3(ppd, pq);
	FUNC1(&pq->lock);

	return ret;
}