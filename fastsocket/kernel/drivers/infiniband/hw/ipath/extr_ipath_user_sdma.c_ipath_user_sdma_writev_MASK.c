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
struct list_head {int dummy; } ;
struct ipath_user_sdma_queue {int counter; int /*<<< orphan*/  lock; } ;
struct ipath_devdata {scalar_t__ ipath_sdma_descq_added; scalar_t__ ipath_sdma_descq_removed; TYPE_2__* pcidev; } ;
struct iovec {int dummy; } ;
struct TYPE_6__ {TYPE_1__* mm; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  mmap_sem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct list_head*) ; 
 TYPE_3__* current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct ipath_devdata*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct ipath_user_sdma_queue*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct ipath_devdata*) ; 
 int FUNC5 (struct ipath_devdata*,struct ipath_user_sdma_queue*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct ipath_devdata*,struct ipath_user_sdma_queue*) ; 
 int FUNC7 (struct ipath_devdata*,struct ipath_user_sdma_queue*,struct list_head*,struct iovec const*,unsigned long,int const) ; 
 int /*<<< orphan*/  FUNC8 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

int FUNC12(struct ipath_devdata *dd,
			   struct ipath_user_sdma_queue *pq,
			   const struct iovec *iov,
			   unsigned long dim)
{
	int ret = 0;
	struct list_head list;
	int npkts = 0;

	FUNC0(&list);

	FUNC9(&pq->lock);

	if (dd->ipath_sdma_descq_added != dd->ipath_sdma_descq_removed) {
		FUNC4(dd);
		FUNC6(dd, pq);
	}

	while (dim) {
		const int mxp = 8;

		FUNC1(&current->mm->mmap_sem);
		ret = FUNC7(dd, pq, &list, iov, dim, mxp);
		FUNC11(&current->mm->mmap_sem);

		if (ret <= 0)
			goto done_unlock;
		else {
			dim -= ret;
			iov += ret;
		}

		/* force packets onto the sdma hw queue... */
		if (!FUNC8(&list)) {
			/*
			 * lazily clean hw queue.  the 4 is a guess of about
			 * how many sdma descriptors a packet will take (it
			 * doesn't have to be perfect).
			 */
			if (FUNC2(dd) < ret * 4) {
				FUNC4(dd);
				FUNC6(dd, pq);
			}

			ret = FUNC5(dd, pq, &list);
			if (ret < 0)
				goto done_unlock;
			else {
				npkts += ret;
				pq->counter += ret;

				if (!FUNC8(&list))
					goto done_unlock;
			}
		}
	}

done_unlock:
	if (!FUNC8(&list))
		FUNC3(&dd->pcidev->dev, pq, &list);
	FUNC10(&pq->lock);

	return (ret < 0) ? ret : npkts;
}