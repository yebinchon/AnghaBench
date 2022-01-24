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
struct qib_user_sdma_queue {int counter; int /*<<< orphan*/  lock; } ;
struct qib_pportdata {scalar_t__ sdma_descq_added; scalar_t__ sdma_descq_removed; } ;
struct qib_devdata {TYPE_2__* pcidev; } ;
struct qib_ctxtdata {struct qib_pportdata* ppd; struct qib_devdata* dd; } ;
struct list_head {int dummy; } ;
struct iovec {int dummy; } ;
struct TYPE_6__ {TYPE_1__* mm; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  mmap_sem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct list_head*) ; 
 TYPE_3__* current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct qib_pportdata*) ; 
 int /*<<< orphan*/  FUNC6 (struct qib_pportdata*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct qib_user_sdma_queue*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC8 (struct qib_pportdata*) ; 
 int FUNC9 (struct qib_pportdata*,struct qib_user_sdma_queue*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC10 (struct qib_pportdata*,struct qib_user_sdma_queue*) ; 
 int FUNC11 (struct qib_devdata*,struct qib_user_sdma_queue*,struct list_head*,struct iovec const*,unsigned long,int const) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

int FUNC13(struct qib_ctxtdata *rcd,
			 struct qib_user_sdma_queue *pq,
			 const struct iovec *iov,
			 unsigned long dim)
{
	struct qib_devdata *dd = rcd->dd;
	struct qib_pportdata *ppd = rcd->ppd;
	int ret = 0;
	struct list_head list;
	int npkts = 0;

	FUNC0(&list);

	FUNC3(&pq->lock);

	/* why not -ECOMM like qib_user_sdma_push_pkts() below? */
	if (!FUNC6(ppd))
		goto done_unlock;

	if (ppd->sdma_descq_added != ppd->sdma_descq_removed) {
		FUNC8(ppd);
		FUNC10(ppd, pq);
	}

	while (dim) {
		const int mxp = 8;

		FUNC1(&current->mm->mmap_sem);
		ret = FUNC11(dd, pq, &list, iov, dim, mxp);
		FUNC12(&current->mm->mmap_sem);

		if (ret <= 0)
			goto done_unlock;
		else {
			dim -= ret;
			iov += ret;
		}

		/* force packets onto the sdma hw queue... */
		if (!FUNC2(&list)) {
			/*
			 * Lazily clean hw queue.  the 4 is a guess of about
			 * how many sdma descriptors a packet will take (it
			 * doesn't have to be perfect).
			 */
			if (FUNC5(ppd) < ret * 4) {
				FUNC8(ppd);
				FUNC10(ppd, pq);
			}

			ret = FUNC9(ppd, pq, &list);
			if (ret < 0)
				goto done_unlock;
			else {
				npkts += ret;
				pq->counter += ret;

				if (!FUNC2(&list))
					goto done_unlock;
			}
		}
	}

done_unlock:
	if (!FUNC2(&list))
		FUNC7(&dd->pcidev->dev, pq, &list);
	FUNC4(&pq->lock);

	return (ret < 0) ? ret : npkts;
}