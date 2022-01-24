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
struct ipath_user_sdma_queue {int /*<<< orphan*/  lock; } ;
struct ipath_devdata {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ipath_devdata*) ; 
 int FUNC1 (struct ipath_devdata*,struct ipath_user_sdma_queue*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct ipath_devdata *dd,
				  struct ipath_user_sdma_queue *pq)
{
	int ret = 0;

	FUNC2(&pq->lock);
	FUNC0(dd);
	ret = FUNC1(dd, pq);
	FUNC3(&pq->lock);

	return ret;
}