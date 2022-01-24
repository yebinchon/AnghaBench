#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct qib_devdata {int num_pports; int cfgctxts; int rcvtidcnt; int ctxtcnt; struct qib_ctxtdata** boardname; int /*<<< orphan*/  uctxt_lock; struct qib_ctxtdata** rcd; struct page** pageshadow; TYPE_2__* pcidev; int /*<<< orphan*/ * physshadow; int /*<<< orphan*/ * pioavailregs_dma; int /*<<< orphan*/  pioavailregs_phys; TYPE_1__* pport; } ;
struct qib_ctxtdata {int dummy; } ;
struct page {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  cc_shadow_lock; struct qib_ctxtdata** congestion_entries_shadow; struct qib_ctxtdata** ccti_entries_shadow; struct qib_ctxtdata** ccti_entries; struct qib_ctxtdata** congestion_entries; int /*<<< orphan*/ * statusp; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  QIB_STATUS_CHIP_PRESENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qib_ctxtdata**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qib_devdata*) ; 
 int /*<<< orphan*/  FUNC4 (struct qib_devdata*,struct qib_ctxtdata*) ; 
 int /*<<< orphan*/  FUNC5 (struct page**,int) ; 
 int /*<<< orphan*/  qib_wc_pat ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (struct page**) ; 

__attribute__((used)) static void FUNC11(struct qib_devdata *dd)
{
	int ctxt;
	int pidx;
	struct qib_ctxtdata **tmp;
	unsigned long flags;

	/* users can't do anything more with chip */
	for (pidx = 0; pidx < dd->num_pports; ++pidx) {
		if (dd->pport[pidx].statusp)
			*dd->pport[pidx].statusp &= ~QIB_STATUS_CHIP_PRESENT;

		FUNC6(&dd->pport[pidx].cc_shadow_lock);

		FUNC1(dd->pport[pidx].congestion_entries);
		dd->pport[pidx].congestion_entries = NULL;
		FUNC1(dd->pport[pidx].ccti_entries);
		dd->pport[pidx].ccti_entries = NULL;
		FUNC1(dd->pport[pidx].ccti_entries_shadow);
		dd->pport[pidx].ccti_entries_shadow = NULL;
		FUNC1(dd->pport[pidx].congestion_entries_shadow);
		dd->pport[pidx].congestion_entries_shadow = NULL;

		FUNC8(&dd->pport[pidx].cc_shadow_lock);
	}

	if (!qib_wc_pat)
		FUNC3(dd);

	if (dd->pioavailregs_dma) {
		FUNC0(&dd->pcidev->dev, PAGE_SIZE,
				  (void *) dd->pioavailregs_dma,
				  dd->pioavailregs_phys);
		dd->pioavailregs_dma = NULL;
	}

	if (dd->pageshadow) {
		struct page **tmpp = dd->pageshadow;
		dma_addr_t *tmpd = dd->physshadow;
		int i, cnt = 0;

		for (ctxt = 0; ctxt < dd->cfgctxts; ctxt++) {
			int ctxt_tidbase = ctxt * dd->rcvtidcnt;
			int maxtid = ctxt_tidbase + dd->rcvtidcnt;

			for (i = ctxt_tidbase; i < maxtid; i++) {
				if (!tmpp[i])
					continue;
				FUNC2(dd->pcidev, tmpd[i],
					       PAGE_SIZE, PCI_DMA_FROMDEVICE);
				FUNC5(&tmpp[i], 1);
				tmpp[i] = NULL;
				cnt++;
			}
		}

		tmpp = dd->pageshadow;
		dd->pageshadow = NULL;
		FUNC10(tmpp);
	}

	/*
	 * Free any resources still in use (usually just kernel contexts)
	 * at unload; we do for ctxtcnt, because that's what we allocate.
	 * We acquire lock to be really paranoid that rcd isn't being
	 * accessed from some interrupt-related code (that should not happen,
	 * but best to be sure).
	 */
	FUNC7(&dd->uctxt_lock, flags);
	tmp = dd->rcd;
	dd->rcd = NULL;
	FUNC9(&dd->uctxt_lock, flags);
	for (ctxt = 0; tmp && ctxt < dd->ctxtcnt; ctxt++) {
		struct qib_ctxtdata *rcd = tmp[ctxt];

		tmp[ctxt] = NULL; /* debugging paranoia */
		FUNC4(dd, rcd);
	}
	FUNC1(tmp);
	FUNC1(dd->boardname);
}