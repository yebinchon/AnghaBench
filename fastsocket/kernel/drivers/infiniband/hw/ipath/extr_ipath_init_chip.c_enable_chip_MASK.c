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
typedef  int u64 ;
typedef  int u32 ;
struct ipath_devdata {int ipath_rcvctrl; int ipath_sendctrl; int ipath_pioupd_thresh; int ipath_r_portenable_shift; int ipath_r_intravail_shift; int ipath_flags; unsigned long long ipath_r_tailupd_shift; int ipath_rhdrhead_intr_off; int ipath_pioavregs; int /*<<< orphan*/ * ipath_pioavailshadow; int /*<<< orphan*/ * ipath_pioavailregs_dma; TYPE_2__** ipath_pd; TYPE_1__* ipath_kregs; int /*<<< orphan*/  ipath_sendctrl_lock; } ;
typedef  int /*<<< orphan*/  __le64 ;
struct TYPE_4__ {int port_head; } ;
struct TYPE_3__ {int /*<<< orphan*/  kr_rcvctrl; int /*<<< orphan*/  kr_scratch; int /*<<< orphan*/  kr_sendctrl; } ;

/* Variables and functions */
 int INFINIPATH_S_PIOBUFAVAILUPD ; 
 int INFINIPATH_S_PIOENABLE ; 
 int INFINIPATH_S_UPDTHRESH_SHIFT ; 
 int IPATH_INITTED ; 
 int IPATH_NODMA_RTAIL ; 
 int IPATH_PRESENT ; 
 int IPATH_SWAP_PIOBUFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ipath_devdata*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ipath_devdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ipath_state_wait ; 
 int /*<<< orphan*/  FUNC3 (struct ipath_devdata*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ipath_devdata*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  ur_rcvegrindexhead ; 
 int /*<<< orphan*/  ur_rcvegrindextail ; 
 int /*<<< orphan*/  ur_rcvhdrhead ; 

__attribute__((used)) static void FUNC8(struct ipath_devdata *dd, int reinit)
{
	u32 val;
	u64 rcvmask;
	unsigned long flags;
	int i;

	if (!reinit)
		FUNC0(&ipath_state_wait);

	FUNC3(dd, dd->ipath_kregs->kr_rcvctrl,
			 dd->ipath_rcvctrl);

	FUNC6(&dd->ipath_sendctrl_lock, flags);
	/* Enable PIO send, and update of PIOavail regs to memory. */
	dd->ipath_sendctrl = INFINIPATH_S_PIOENABLE |
		INFINIPATH_S_PIOBUFAVAILUPD;

	/*
	 * Set the PIO avail update threshold to host memory
	 * on chips that support it.
	 */
	if (dd->ipath_pioupd_thresh)
		dd->ipath_sendctrl |= dd->ipath_pioupd_thresh
			<< INFINIPATH_S_UPDTHRESH_SHIFT;
	FUNC3(dd, dd->ipath_kregs->kr_sendctrl, dd->ipath_sendctrl);
	FUNC1(dd, dd->ipath_kregs->kr_scratch);
	FUNC7(&dd->ipath_sendctrl_lock, flags);

	/*
	 * Enable kernel ports' receive and receive interrupt.
	 * Other ports done as user opens and inits them.
	 */
	rcvmask = 1ULL;
	dd->ipath_rcvctrl |= (rcvmask << dd->ipath_r_portenable_shift) |
		(rcvmask << dd->ipath_r_intravail_shift);
	if (!(dd->ipath_flags & IPATH_NODMA_RTAIL))
		dd->ipath_rcvctrl |= (1ULL << dd->ipath_r_tailupd_shift);

	FUNC3(dd, dd->ipath_kregs->kr_rcvctrl,
			 dd->ipath_rcvctrl);

	/*
	 * now ready for use.  this should be cleared whenever we
	 * detect a reset, or initiate one.
	 */
	dd->ipath_flags |= IPATH_INITTED;

	/*
	 * Init our shadow copies of head from tail values,
	 * and write head values to match.
	 */
	val = FUNC2(dd, ur_rcvegrindextail, 0);
	FUNC4(dd, ur_rcvegrindexhead, val, 0);

	/* Initialize so we interrupt on next packet received */
	FUNC4(dd, ur_rcvhdrhead,
			 dd->ipath_rhdrhead_intr_off |
			 dd->ipath_pd[0]->port_head, 0);

	/*
	 * by now pioavail updates to memory should have occurred, so
	 * copy them into our working/shadow registers; this is in
	 * case something went wrong with abort, but mostly to get the
	 * initial values of the generation bit correct.
	 */
	for (i = 0; i < dd->ipath_pioavregs; i++) {
		__le64 pioavail;

		/*
		 * Chip Errata bug 6641; even and odd qwords>3 are swapped.
		 */
		if (i > 3 && (dd->ipath_flags & IPATH_SWAP_PIOBUFS))
			pioavail = dd->ipath_pioavailregs_dma[i ^ 1];
		else
			pioavail = dd->ipath_pioavailregs_dma[i];
		/*
		 * don't need to worry about ipath_pioavailkernel here
		 * because we will call ipath_chg_pioavailkernel() later
		 * in initialization, to busy out buffers as needed
		 */
		dd->ipath_pioavailshadow[i] = FUNC5(pioavail);
	}
	/* can get counters, stats, etc. */
	dd->ipath_flags |= IPATH_PRESENT;
}