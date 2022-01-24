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
typedef  int u64 ;
typedef  scalar_t__ u32 ;
struct qib_pportdata {int lflags; int state_wanted; int /*<<< orphan*/  state_wait; int /*<<< orphan*/  port; int /*<<< orphan*/ * statusp; } ;
struct qib_devdata {struct qib_pportdata* pport; int /*<<< orphan*/ * devstatusp; int /*<<< orphan*/  flags; TYPE_2__* cspec; TYPE_1__* eep_st_masks; } ;
struct TYPE_6__ {int /*<<< orphan*/  sps_hdrfull; int /*<<< orphan*/  sps_buffull; int /*<<< orphan*/  sps_txerrs; int /*<<< orphan*/  sps_rcverrs; } ;
struct TYPE_5__ {int errormask; char* emsgbuf; scalar_t__ lastlinkrecov; } ;
struct TYPE_4__ {int errs_to_log; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int E_SUM_ERRS ; 
 int E_SUM_LINK_PKTERRS ; 
 int E_SUM_PKTERRS ; 
 int /*<<< orphan*/  HardwareErr ; 
 int /*<<< orphan*/  IBStatusChanged ; 
 int IB_E_BITSEXTANT ; 
 scalar_t__ IB_PHYSPORTSTATE_LINK_ERR_RECOVER ; 
 scalar_t__ IB_PORT_INIT ; 
 int QIBL_LINKACTIVE ; 
 int QIB_EEP_LOG_CNT ; 
 int /*<<< orphan*/  QIB_INITTED ; 
 int /*<<< orphan*/  QIB_STATUS_HWERROR ; 
 int /*<<< orphan*/  QIB_STATUS_IB_CONF ; 
 int QLOGIC_IB_E_PKTERRS ; 
 int /*<<< orphan*/  RcvEgrFullErr ; 
 int /*<<< orphan*/  RcvHdrFullErr ; 
 int /*<<< orphan*/  ResetNegated ; 
 int FUNC1 (struct qib_devdata*,int) ; 
 int /*<<< orphan*/  kr_errclear ; 
 int /*<<< orphan*/  kr_ibcstatus ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct qib_devdata*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct qib_devdata*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct qib_devdata*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct qib_pportdata*) ; 
 int /*<<< orphan*/  FUNC8 (struct qib_devdata*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct qib_pportdata*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct qib_devdata*,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (struct qib_devdata*,int,int) ; 
 int FUNC12 (struct qib_devdata*,int /*<<< orphan*/ ) ; 
 TYPE_3__ qib_stats ; 
 int /*<<< orphan*/  FUNC13 (struct qib_devdata*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC15(struct qib_devdata *dd, u64 errs)
{
	char *msg;
	u64 ignore_this_time = 0;
	u64 iserr = 0;
	int log_idx;
	struct qib_pportdata *ppd = dd->pport;
	u64 mask;

	/* don't report errors that are masked */
	errs &= dd->cspec->errormask;
	msg = dd->cspec->emsgbuf;

	/* do these first, they are most important */
	if (errs & FUNC0(HardwareErr))
		FUNC8(dd, msg, sizeof dd->cspec->emsgbuf);
	else
		for (log_idx = 0; log_idx < QIB_EEP_LOG_CNT; ++log_idx)
			if (errs & dd->eep_st_masks[log_idx].errs_to_log)
				FUNC11(dd, log_idx, 1);

	if (errs & ~IB_E_BITSEXTANT)
		FUNC5(dd,
			"error interrupt with unknown errors %llx set\n",
			(unsigned long long) (errs & ~IB_E_BITSEXTANT));

	if (errs & E_SUM_ERRS) {
		FUNC7(ppd);
		if ((errs & E_SUM_LINK_PKTERRS) &&
		    !(ppd->lflags & QIBL_LINKACTIVE)) {
			/*
			 * This can happen when trying to bring the link
			 * up, but the IB link changes state at the "wrong"
			 * time. The IB logic then complains that the packet
			 * isn't valid.  We don't want to confuse people, so
			 * we just don't print them, except at debug
			 */
			ignore_this_time = errs & E_SUM_LINK_PKTERRS;
		}
	} else if ((errs & E_SUM_LINK_PKTERRS) &&
		   !(ppd->lflags & QIBL_LINKACTIVE)) {
		/*
		 * This can happen when SMA is trying to bring the link
		 * up, but the IB link changes state at the "wrong" time.
		 * The IB logic then complains that the packet isn't
		 * valid.  We don't want to confuse people, so we just
		 * don't print them, except at debug
		 */
		ignore_this_time = errs & E_SUM_LINK_PKTERRS;
	}

	FUNC13(dd, kr_errclear, errs);

	errs &= ~ignore_this_time;
	if (!errs)
		goto done;

	/*
	 * The ones we mask off are handled specially below
	 * or above.
	 */
	mask = FUNC0(IBStatusChanged) | FUNC0(RcvEgrFullErr) |
		FUNC0(RcvHdrFullErr) | FUNC0(HardwareErr);
	FUNC4(dd, msg, sizeof dd->cspec->emsgbuf, errs & ~mask);

	if (errs & E_SUM_PKTERRS)
		qib_stats.sps_rcverrs++;
	if (errs & E_SUM_ERRS)
		qib_stats.sps_txerrs++;

	iserr = errs & ~(E_SUM_PKTERRS | QLOGIC_IB_E_PKTERRS);

	if (errs & FUNC0(IBStatusChanged)) {
		u64 ibcs = FUNC12(dd, kr_ibcstatus);
		u32 ibstate = FUNC2(ibcs);
		int handle = 1;

		if (ibstate != IB_PORT_INIT && dd->cspec->lastlinkrecov)
			handle = FUNC1(dd, ibcs);
		/*
		 * Since going into a recovery state causes the link state
		 * to go down and since recovery is transitory, it is better
		 * if we "miss" ever seeing the link training state go into
		 * recovery (i.e., ignore this transition for link state
		 * special handling purposes) without updating lastibcstat.
		 */
		if (handle && FUNC3(ibcs) ==
					    IB_PHYSPORTSTATE_LINK_ERR_RECOVER)
			handle = 0;
		if (handle)
			FUNC9(ppd, ibcs);
	}

	if (errs & FUNC0(ResetNegated)) {
		FUNC5(dd,
			"Got reset, requires re-init (unload and reload driver)\n");
		dd->flags &= ~QIB_INITTED;  /* needs re-init */
		/* mark as having had error */
		*dd->devstatusp |= QIB_STATUS_HWERROR;
		*dd->pport->statusp &= ~QIB_STATUS_IB_CONF;
	}

	if (*msg && iserr)
		FUNC6(dd, ppd->port, "%s error\n", msg);

	if (ppd->state_wanted & ppd->lflags)
		FUNC14(&ppd->state_wait);

	/*
	 * If there were hdrq or egrfull errors, wake up any processes
	 * waiting in poll.  We used to try to check which contexts had
	 * the overflow, but given the cost of that and the chip reads
	 * to support it, it's better to just wake everybody up if we
	 * get an overflow; waiters can poll again if it's not them.
	 */
	if (errs & (FUNC0(RcvEgrFullErr) | FUNC0(RcvHdrFullErr))) {
		FUNC10(dd, ~0U);
		if (errs & FUNC0(RcvEgrFullErr))
			qib_stats.sps_buffull++;
		else
			qib_stats.sps_hdrfull++;
	}
done:
	return;
}