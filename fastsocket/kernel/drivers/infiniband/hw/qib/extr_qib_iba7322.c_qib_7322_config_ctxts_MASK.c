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
typedef  int u32 ;
struct qib_devdata {int num_pports; int first_user_ctxt; int n_krcv_queues; int ctxtcnt; unsigned long long rcvctrl; int rcvhdrcnt; TYPE_1__* cspec; } ;
struct TYPE_2__ {int numctxts; void* rcvegrcnt; int /*<<< orphan*/  rcvmod_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  ContextCfg ; 
 int NUM_IB_PORTS ; 
 int /*<<< orphan*/  RcvCtrl ; 
 unsigned long long FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XrcTypeCode ; 
 int /*<<< orphan*/  kr_contextcnt ; 
 int /*<<< orphan*/  kr_rcvctrl ; 
 int /*<<< orphan*/  kr_rcvegrcnt ; 
 int FUNC1 (void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int qib_cfgctxts ; 
 int qib_n_krcv_queues ; 
 unsigned int qib_rcvhdrcnt ; 
 void* FUNC3 (struct qib_devdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct qib_devdata*,int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct qib_devdata *dd)
{
	unsigned long flags;
	u32 nchipctxts;

	nchipctxts = FUNC3(dd, kr_contextcnt);
	dd->cspec->numctxts = nchipctxts;
	if (qib_n_krcv_queues > 1 && dd->num_pports) {
		dd->first_user_ctxt = NUM_IB_PORTS +
			(qib_n_krcv_queues - 1) * dd->num_pports;
		if (dd->first_user_ctxt > nchipctxts)
			dd->first_user_ctxt = nchipctxts;
		dd->n_krcv_queues = dd->first_user_ctxt / dd->num_pports;
	} else {
		dd->first_user_ctxt = NUM_IB_PORTS;
		dd->n_krcv_queues = 1;
	}

	if (!qib_cfgctxts) {
		int nctxts = dd->first_user_ctxt + FUNC2();

		if (nctxts <= 6)
			dd->ctxtcnt = 6;
		else if (nctxts <= 10)
			dd->ctxtcnt = 10;
		else if (nctxts <= nchipctxts)
			dd->ctxtcnt = nchipctxts;
	} else if (qib_cfgctxts < dd->num_pports)
		dd->ctxtcnt = dd->num_pports;
	else if (qib_cfgctxts <= nchipctxts)
		dd->ctxtcnt = qib_cfgctxts;
	if (!dd->ctxtcnt) /* none of the above, set to max */
		dd->ctxtcnt = nchipctxts;

	/*
	 * Chip can be configured for 6, 10, or 18 ctxts, and choice
	 * affects number of eager TIDs per ctxt (1K, 2K, 4K).
	 * Lock to be paranoid about later motion, etc.
	 */
	FUNC5(&dd->cspec->rcvmod_lock, flags);
	if (dd->ctxtcnt > 10)
		dd->rcvctrl |= 2ULL << FUNC0(RcvCtrl, ContextCfg);
	else if (dd->ctxtcnt > 6)
		dd->rcvctrl |= 1ULL << FUNC0(RcvCtrl, ContextCfg);
	/* else configure for default 6 receive ctxts */

	/* The XRC opcode is 5. */
	dd->rcvctrl |= 5ULL << FUNC0(RcvCtrl, XrcTypeCode);

	/*
	 * RcvCtrl *must* be written here so that the
	 * chip understands how to change rcvegrcnt below.
	 */
	FUNC4(dd, kr_rcvctrl, dd->rcvctrl);
	FUNC6(&dd->cspec->rcvmod_lock, flags);

	/* kr_rcvegrcnt changes based on the number of contexts enabled */
	dd->cspec->rcvegrcnt = FUNC3(dd, kr_rcvegrcnt);
	if (qib_rcvhdrcnt)
		dd->rcvhdrcnt = FUNC1(dd->cspec->rcvegrcnt, qib_rcvhdrcnt);
	else
		dd->rcvhdrcnt = 2 * FUNC1(dd->cspec->rcvegrcnt,
				    dd->num_pports > 1 ? 1024U : 2048U);
}