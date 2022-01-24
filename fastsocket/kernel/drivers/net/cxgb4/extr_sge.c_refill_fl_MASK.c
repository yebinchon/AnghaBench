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
struct sge_fl {unsigned int avail; size_t pidx; size_t size; unsigned int pend_cred; scalar_t__ cntxt_id; int /*<<< orphan*/ * desc; struct rx_sw_desc* sdesc; int /*<<< orphan*/  alloc_failed; int /*<<< orphan*/  large_alloc_failed; } ;
struct rx_sw_desc {int dummy; } ;
struct page {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  starving_fl; scalar_t__ egr_start; } ;
struct adapter {TYPE_1__ sge; int /*<<< orphan*/  pdev_dev; } ;
typedef  int gfp_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 int FL_PG_ORDER ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  RX_LARGE_BUF ; 
 int __GFP_COLD ; 
 int __GFP_COMP ; 
 int __GFP_NOWARN ; 
 int /*<<< orphan*/  FUNC0 (struct page*,int) ; 
 struct page* FUNC1 (int) ; 
 struct page* FUNC2 (int,int) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct page*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct sge_fl*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct adapter*,struct sge_fl*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct rx_sw_desc*,struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 scalar_t__ FUNC12 (int) ; 

__attribute__((used)) static unsigned int FUNC13(struct adapter *adap, struct sge_fl *q, int n,
			      gfp_t gfp)
{
	struct page *pg;
	dma_addr_t mapping;
	unsigned int cred = q->avail;
	__be64 *d = &q->desc[q->pidx];
	struct rx_sw_desc *sd = &q->sdesc[q->pidx];

	gfp |= __GFP_NOWARN | __GFP_COLD;

#if FL_PG_ORDER > 0
	/*
	 * Prefer large buffers
	 */
	while (n) {
		pg = alloc_pages(gfp | __GFP_COMP, FL_PG_ORDER);
		if (unlikely(!pg)) {
			q->large_alloc_failed++;
			break;       /* fall back to single pages */
		}

		mapping = dma_map_page(adap->pdev_dev, pg, 0,
				       PAGE_SIZE << FL_PG_ORDER,
				       PCI_DMA_FROMDEVICE);
		if (unlikely(dma_mapping_error(adap->pdev_dev, mapping))) {
			__free_pages(pg, FL_PG_ORDER);
			goto out;   /* do not try small pages for this error */
		}
		mapping |= RX_LARGE_BUF;
		*d++ = cpu_to_be64(mapping);

		set_rx_sw_desc(sd, pg, mapping);
		sd++;

		q->avail++;
		if (++q->pidx == q->size) {
			q->pidx = 0;
			sd = q->sdesc;
			d = q->desc;
		}
		n--;
	}
#endif

	while (n--) {
		pg = FUNC1(gfp);
		if (FUNC12(!pg)) {
			q->alloc_failed++;
			break;
		}

		mapping = FUNC4(adap->pdev_dev, pg, 0, PAGE_SIZE,
				       PCI_DMA_FROMDEVICE);
		if (FUNC12(FUNC5(adap->pdev_dev, mapping))) {
			FUNC7(pg);
			goto out;
		}
		*d++ = FUNC3(mapping);

		FUNC10(sd, pg, mapping);
		sd++;

		q->avail++;
		if (++q->pidx == q->size) {
			q->pidx = 0;
			sd = q->sdesc;
			d = q->desc;
		}
	}

out:	cred = q->avail - cred;
	q->pend_cred += cred;
	FUNC8(adap, q);

	if (FUNC12(FUNC6(q))) {
		FUNC11();
		FUNC9(q->cntxt_id - adap->sge.egr_start,
			adap->sge.starving_fl);
	}

	return cred;
}