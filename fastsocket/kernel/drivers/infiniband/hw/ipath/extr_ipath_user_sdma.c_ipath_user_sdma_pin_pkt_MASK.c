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
struct ipath_user_sdma_queue {int dummy; } ;
struct ipath_user_sdma_pkt {unsigned long naddr; } ;
struct ipath_devdata {TYPE_1__* pcidev; } ;
struct iovec {int /*<<< orphan*/  iov_len; scalar_t__ iov_base; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct ipath_user_sdma_queue*,struct ipath_user_sdma_pkt*,unsigned long) ; 
 int FUNC1 (struct iovec const*) ; 
 int FUNC2 (struct ipath_devdata const*,struct ipath_user_sdma_pkt*,unsigned long const,int /*<<< orphan*/ ,int const) ; 

__attribute__((used)) static int FUNC3(const struct ipath_devdata *dd,
				   struct ipath_user_sdma_queue *pq,
				   struct ipath_user_sdma_pkt *pkt,
				   const struct iovec *iov,
				   unsigned long niov)
{
	int ret = 0;
	unsigned long idx;

	for (idx = 0; idx < niov; idx++) {
		const int npages = FUNC1(iov + idx);
		const unsigned long addr = (unsigned long) iov[idx].iov_base;

		ret = FUNC2(dd, pkt,
						addr, iov[idx].iov_len,
						npages);
		if (ret < 0)
			goto free_pkt;
	}

	goto done;

free_pkt:
	for (idx = 0; idx < pkt->naddr; idx++)
		FUNC0(&dd->pcidev->dev, pq, pkt, idx);

done:
	return ret;
}