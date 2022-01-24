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
struct qib_user_sdma_queue {int /*<<< orphan*/  pkt_slab; int /*<<< orphan*/  dma_pages_root; int /*<<< orphan*/  header_cache; int /*<<< orphan*/  header_cache_name; int /*<<< orphan*/  pkt_slab_name; int /*<<< orphan*/  lock; int /*<<< orphan*/  sent; scalar_t__ sent_counter; scalar_t__ counter; } ;
struct qib_user_sdma_pkt {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  QIB_USER_SDMA_EXP_HEADER_LENGTH ; 
 int /*<<< orphan*/  RB_ROOT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qib_user_sdma_queue*) ; 
 struct qib_user_sdma_queue* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,char*,int,int,int) ; 

struct qib_user_sdma_queue *
FUNC8(struct device *dev, int unit, int ctxt, int sctxt)
{
	struct qib_user_sdma_queue *pq =
		FUNC3(sizeof(struct qib_user_sdma_queue), GFP_KERNEL);

	if (!pq)
		goto done;

	pq->counter = 0;
	pq->sent_counter = 0;
	FUNC0(&pq->sent);

	FUNC6(&pq->lock);

	FUNC7(pq->pkt_slab_name, sizeof(pq->pkt_slab_name),
		 "qib-user-sdma-pkts-%u-%02u.%02u", unit, ctxt, sctxt);
	pq->pkt_slab = FUNC4(pq->pkt_slab_name,
					 sizeof(struct qib_user_sdma_pkt),
					 0, 0, NULL);

	if (!pq->pkt_slab)
		goto err_kfree;

	FUNC7(pq->header_cache_name, sizeof(pq->header_cache_name),
		 "qib-user-sdma-headers-%u-%02u.%02u", unit, ctxt, sctxt);
	pq->header_cache = FUNC1(pq->header_cache_name,
					   dev,
					   QIB_USER_SDMA_EXP_HEADER_LENGTH,
					   4, 0);
	if (!pq->header_cache)
		goto err_slab;

	pq->dma_pages_root = RB_ROOT;

	goto done;

err_slab:
	FUNC5(pq->pkt_slab);
err_kfree:
	FUNC2(pq);
	pq = NULL;

done:
	return pq;
}