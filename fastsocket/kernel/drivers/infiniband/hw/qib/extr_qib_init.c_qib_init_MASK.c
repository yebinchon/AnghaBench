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
typedef  scalar_t__ u32 ;
struct TYPE_2__ {unsigned long data; int /*<<< orphan*/  function; } ;
struct qib_pportdata {int lflags; int* statusp; int /*<<< orphan*/  hol_state; TYPE_1__ hol_timer; int /*<<< orphan*/  link_speed_enabled; int /*<<< orphan*/  port; int /*<<< orphan*/  lflags_lock; int /*<<< orphan*/  init_ibmaxlen; int /*<<< orphan*/  ibmaxlen; } ;
struct qib_devdata {int num_pports; int (* f_late_initreg ) (struct qib_devdata*) ;unsigned int first_user_ctxt; int rcvhdrentsize; int (* f_bringup_serdes ) (struct qib_pportdata*) ;int flags; int /*<<< orphan*/  stats_timer; int /*<<< orphan*/  intrchk_timer; int /*<<< orphan*/  (* f_set_intr_state ) (struct qib_devdata*,int) ;struct qib_pportdata* pport; int /*<<< orphan*/  pcidev; scalar_t__ rcvegrbufsize; int /*<<< orphan*/  piosize2k; int /*<<< orphan*/  piosize4k; struct qib_ctxtdata** rcd; } ;
struct qib_ctxtdata {int dummy; } ;

/* Variables and functions */
 int ACTIVITY_TIMER ; 
 int ENETDOWN ; 
 int HZ ; 
 int QIBL_IB_LINK_DISABLED ; 
 int QIBL_LINKACTIVE ; 
 int QIBL_LINKARMED ; 
 int QIBL_LINKDOWN ; 
 int QIBL_LINKINIT ; 
 int QIBL_LINKV ; 
 int QIB_DEFAULT_MTU ; 
 int QIB_HAS_SEND_DMA ; 
 int /*<<< orphan*/  QIB_HOL_UP ; 
 int QIB_STATUS_CHIP_PRESENT ; 
 int QIB_STATUS_INITTED ; 
 int /*<<< orphan*/  FUNC0 (struct qib_devdata*) ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (struct qib_devdata*) ; 
 int /*<<< orphan*/  FUNC3 (struct qib_devdata*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ jiffies ; 
 int FUNC5 (struct qib_devdata*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC8 (struct qib_devdata*,struct qib_ctxtdata*) ; 
 int /*<<< orphan*/  FUNC9 (struct qib_devdata*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qib_hol_event ; 
 scalar_t__ qib_ibmtu ; 
 scalar_t__ qib_mini_init ; 
 int /*<<< orphan*/  FUNC11 (struct qib_pportdata*,int) ; 
 int FUNC12 (struct qib_ctxtdata*) ; 
 int FUNC13 (struct qib_pportdata*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC16 (struct qib_devdata*) ; 
 int FUNC17 (struct qib_pportdata*) ; 
 int /*<<< orphan*/  FUNC18 (struct qib_devdata*,int) ; 

int FUNC19(struct qib_devdata *dd, int reinit)
{
	int ret = 0, pidx, lastfail = 0;
	u32 portok = 0;
	unsigned i;
	struct qib_ctxtdata *rcd;
	struct qib_pportdata *ppd;
	unsigned long flags;

	/* Set linkstate to unknown, so we can watch for a transition. */
	for (pidx = 0; pidx < dd->num_pports; ++pidx) {
		ppd = dd->pport + pidx;
		FUNC14(&ppd->lflags_lock, flags);
		ppd->lflags &= ~(QIBL_LINKACTIVE | QIBL_LINKARMED |
				 QIBL_LINKDOWN | QIBL_LINKINIT |
				 QIBL_LINKV);
		FUNC15(&ppd->lflags_lock, flags);
	}

	if (reinit)
		ret = FUNC2(dd);
	else
		ret = FUNC5(dd);
	if (ret)
		goto done;

	/* Bypass most chip-init, to get to device creation */
	if (qib_mini_init)
		return 0;

	ret = dd->f_late_initreg(dd);
	if (ret)
		goto done;

	/* dd->rcd can be NULL if early init failed */
	for (i = 0; dd->rcd && i < dd->first_user_ctxt; ++i) {
		/*
		 * Set up the (kernel) rcvhdr queue and egr TIDs.  If doing
		 * re-init, the simplest way to handle this is to free
		 * existing, and re-allocate.
		 * Need to re-create rest of ctxt 0 ctxtdata as well.
		 */
		rcd = dd->rcd[i];
		if (!rcd)
			continue;

		lastfail = FUNC8(dd, rcd);
		if (!lastfail)
			lastfail = FUNC12(rcd);
		if (lastfail) {
			FUNC9(dd,
				"failed to allocate kernel ctxt's rcvhdrq and/or egr bufs\n");
			continue;
		}
	}

	for (pidx = 0; pidx < dd->num_pports; ++pidx) {
		int mtu;
		if (lastfail)
			ret = lastfail;
		ppd = dd->pport + pidx;
		mtu = FUNC1(qib_ibmtu);
		if (mtu == -1) {
			mtu = QIB_DEFAULT_MTU;
			qib_ibmtu = 0; /* don't leave invalid value */
		}
		/* set max we can ever have for this driver load */
		ppd->init_ibmaxlen = FUNC6(mtu > 2048 ?
					 dd->piosize4k : dd->piosize2k,
					 dd->rcvegrbufsize +
					 (dd->rcvhdrentsize << 2));
		/*
		 * Have to initialize ibmaxlen, but this will normally
		 * change immediately in qib_set_mtu().
		 */
		ppd->ibmaxlen = ppd->init_ibmaxlen;
		FUNC11(ppd, mtu);

		FUNC14(&ppd->lflags_lock, flags);
		ppd->lflags |= QIBL_IB_LINK_DISABLED;
		FUNC15(&ppd->lflags_lock, flags);

		lastfail = dd->f_bringup_serdes(ppd);
		if (lastfail) {
			FUNC10(dd->pcidev,
				 "Failed to bringup IB port %u\n", ppd->port);
			lastfail = -ENETDOWN;
			continue;
		}

		portok++;
	}

	if (!portok) {
		/* none of the ports initialized */
		if (!ret && lastfail)
			ret = lastfail;
		else if (!ret)
			ret = -ENETDOWN;
		/* but continue on, so we can debug cause */
	}

	FUNC0(dd);

	FUNC3(dd);

done:
	if (!ret) {
		/* chip is OK for user apps; mark it as initialized */
		for (pidx = 0; pidx < dd->num_pports; ++pidx) {
			ppd = dd->pport + pidx;
			/*
			 * Set status even if port serdes is not initialized
			 * so that diags will work.
			 */
			*ppd->statusp |= QIB_STATUS_CHIP_PRESENT |
				QIB_STATUS_INITTED;
			if (!ppd->link_speed_enabled)
				continue;
			if (dd->flags & QIB_HAS_SEND_DMA)
				ret = FUNC13(ppd);
			FUNC4(&ppd->hol_timer);
			ppd->hol_timer.function = qib_hol_event;
			ppd->hol_timer.data = (unsigned long)ppd;
			ppd->hol_state = QIB_HOL_UP;
		}

		/* now we can enable all interrupts from the chip */
		dd->f_set_intr_state(dd, 1);

		/*
		 * Setup to verify we get an interrupt, and fallback
		 * to an alternate if necessary and possible.
		 */
		FUNC7(&dd->intrchk_timer, jiffies + HZ/2);
		/* start stats retrieval timer */
		FUNC7(&dd->stats_timer, jiffies + HZ * ACTIVITY_TIMER);
	}

	/* if ret is non-zero, we probably should do some cleanup here... */
	return ret;
}