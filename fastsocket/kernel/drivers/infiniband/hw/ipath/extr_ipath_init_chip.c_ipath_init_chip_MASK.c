#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned long long u64 ;
typedef  int u32 ;
struct ipath_portdata {int /*<<< orphan*/  port_rcvhdrq_size; } ;
struct TYPE_9__ {unsigned long data; void* expires; int /*<<< orphan*/  function; } ;
struct ipath_devdata {unsigned long long ipath_rcvhdrcnt; int ipath_piobcnt2k; int ipath_piobcnt4k; int ipath_pioavregs; int ipath_cfgports; int ipath_pioreserved; int ipath_lastport_piobuf; int ipath_pbufsport; int ipath_ports_extrabuf; int ipath_lastpioindexl; int (* ipath_f_early_init ) (struct ipath_devdata*) ;int ipath_hdrqlast; int ipath_rcvhdrentsize; unsigned long long ipath_rcvhdrsize; unsigned long long ipath_pioavailregs_phys; unsigned long long ipath_hwerrmask; unsigned long long ipath_maskederrs; unsigned long ipath_dummy_hdrq_phys; int ipath_stats_timer_active; int ipath_flags; TYPE_4__ ipath_intrchk_timer; int /*<<< orphan*/ * ipath_statusp; TYPE_1__* ipath_kregs; int /*<<< orphan*/  (* ipath_f_intrsetup ) (struct ipath_devdata*) ;int /*<<< orphan*/  ipath_hol_state; TYPE_4__ ipath_hol_timer; TYPE_4__ ipath_stats_timer; struct ipath_portdata** ipath_pd; TYPE_2__* pcidev; int /*<<< orphan*/  ipath_dummy_hdrq; int /*<<< orphan*/  (* ipath_f_tidtemplate ) (struct ipath_devdata*) ;void* ipath_errormask; int /*<<< orphan*/  (* ipath_f_init_hwerrors ) (struct ipath_devdata*) ;scalar_t__ ipath_lastpioindex; int /*<<< orphan*/  ipath_rcvegrcnt; int /*<<< orphan*/  ipath_p0_rcvegrcnt; } ;
typedef  int gfp_t ;
struct TYPE_8__ {scalar_t__ sps_nports; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  kr_intclear; int /*<<< orphan*/  kr_intmask; int /*<<< orphan*/  kr_errormask; int /*<<< orphan*/  kr_errorclear; int /*<<< orphan*/  kr_hwerrmask; int /*<<< orphan*/  kr_hwerrclear; int /*<<< orphan*/  kr_control; int /*<<< orphan*/  kr_rcvbthqp; int /*<<< orphan*/  kr_sendpioavailaddr; int /*<<< orphan*/  kr_rcvhdrsize; int /*<<< orphan*/  kr_rcvhdrentsize; int /*<<< orphan*/  kr_rcvhdrcnt; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int BITS_PER_BYTE ; 
 int EINVAL ; 
 int ENETDOWN ; 
 int ENOMEM ; 
 int EPERM ; 
 int GFP_USER ; 
 int HZ ; 
 unsigned long long INFINIPATH_HWE_MEMBISTFAILED ; 
 int IPATH_HAS_SEND_DMA ; 
 int /*<<< orphan*/  IPATH_HOL_UP ; 
 unsigned long long IPATH_KD_QP ; 
 int IPATH_MIN_USER_PORT_BUFCNT ; 
 int /*<<< orphan*/  IPATH_STATUS_CHIP_PRESENT ; 
 int /*<<< orphan*/  IPATH_STATUS_INITTED ; 
 int /*<<< orphan*/  VERBOSE ; 
 int __GFP_COMP ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 scalar_t__ FUNC2 (struct ipath_devdata*) ; 
 int FUNC3 (struct ipath_devdata*) ; 
 struct ipath_portdata* FUNC4 (struct ipath_devdata*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ipath_devdata*,int) ; 
 int FUNC8 (struct ipath_devdata*,int) ; 
 int FUNC9 (struct ipath_devdata*) ; 
 int /*<<< orphan*/  FUNC10 (struct ipath_devdata*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC12 (struct ipath_devdata*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC14 (struct ipath_devdata*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC15 (struct ipath_devdata*,struct ipath_portdata*) ; 
 int /*<<< orphan*/  FUNC16 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC17 (struct ipath_devdata*,char*,...) ; 
 int /*<<< orphan*/  FUNC18 (struct ipath_devdata*,struct ipath_portdata*) ; 
 int /*<<< orphan*/  ipath_get_faststats ; 
 int /*<<< orphan*/  ipath_hol_event ; 
 int ipath_kpiobufs ; 
 void* FUNC19 (struct ipath_devdata*,int /*<<< orphan*/ ) ; 
 TYPE_3__ ipath_stats ; 
 int /*<<< orphan*/  FUNC20 (struct ipath_devdata*,int /*<<< orphan*/ ,unsigned long long) ; 
 void* jiffies ; 
 unsigned long long FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC22 (struct ipath_devdata*) ; 
 int FUNC23 (struct ipath_devdata*) ; 
 int /*<<< orphan*/  FUNC24 (struct ipath_devdata*) ; 
 int /*<<< orphan*/  FUNC25 (struct ipath_devdata*) ; 
 int /*<<< orphan*/  FUNC26 (struct ipath_devdata*) ; 
 int /*<<< orphan*/  verify_interrupt ; 

int FUNC27(struct ipath_devdata *dd, int reinit)
{
	int ret = 0;
	u32 kpiobufs, defkbufs;
	u32 piobufs, uports;
	u64 val;
	struct ipath_portdata *pd;
	gfp_t gfp_flags = GFP_USER | __GFP_COMP;

	ret = FUNC8(dd, reinit);
	if (ret)
		goto done;

	/*
	 * we ignore most issues after reporting them, but have to specially
	 * handle hardware-disabled chips.
	 */
	if (ret == 2) {
		/* unique error, known to ipath_init_one */
		ret = -EPERM;
		goto done;
	}

	/*
	 * We could bump this to allow for full rcvegrcnt + rcvtidcnt,
	 * but then it no longer nicely fits power of two, and since
	 * we now use routines that backend onto __get_free_pages, the
	 * rest would be wasted.
	 */
	dd->ipath_rcvhdrcnt = FUNC21(dd->ipath_p0_rcvegrcnt, dd->ipath_rcvegrcnt);
	FUNC20(dd, dd->ipath_kregs->kr_rcvhdrcnt,
			 dd->ipath_rcvhdrcnt);

	/*
	 * Set up the shadow copies of the piobufavail registers,
	 * which we compare against the chip registers for now, and
	 * the in memory DMA'ed copies of the registers.  This has to
	 * be done early, before we calculate lastport, etc.
	 */
	piobufs = dd->ipath_piobcnt2k + dd->ipath_piobcnt4k;
	/*
	 * calc number of pioavail registers, and save it; we have 2
	 * bits per buffer.
	 */
	dd->ipath_pioavregs = FUNC0(piobufs, sizeof(u64) * BITS_PER_BYTE / 2)
		/ (sizeof(u64) * BITS_PER_BYTE / 2);
	uports = dd->ipath_cfgports ? dd->ipath_cfgports - 1 : 0;
	if (piobufs > 144)
		defkbufs = 32 + dd->ipath_pioreserved;
	else
		defkbufs = 16 + dd->ipath_pioreserved;

	if (ipath_kpiobufs && (ipath_kpiobufs +
		(uports * IPATH_MIN_USER_PORT_BUFCNT)) > piobufs) {
		int i = (int) piobufs -
			(int) (uports * IPATH_MIN_USER_PORT_BUFCNT);
		if (i < 1)
			i = 1;
		FUNC5(&dd->pcidev->dev, "Allocating %d PIO bufs of "
			 "%d for kernel leaves too few for %d user ports "
			 "(%d each); using %u\n", ipath_kpiobufs,
			 piobufs, uports, IPATH_MIN_USER_PORT_BUFCNT, i);
		/*
		 * shouldn't change ipath_kpiobufs, because could be
		 * different for different devices...
		 */
		kpiobufs = i;
	} else if (ipath_kpiobufs)
		kpiobufs = ipath_kpiobufs;
	else
		kpiobufs = defkbufs;
	dd->ipath_lastport_piobuf = piobufs - kpiobufs;
	dd->ipath_pbufsport =
		uports ? dd->ipath_lastport_piobuf / uports : 0;
	/* if not an even divisor, some user ports get extra buffers */
	dd->ipath_ports_extrabuf = dd->ipath_lastport_piobuf -
		(dd->ipath_pbufsport * uports);
	if (dd->ipath_ports_extrabuf)
		FUNC16("%u pbufs/port leaves some unused, add 1 buffer to "
			"ports <= %u\n", dd->ipath_pbufsport,
			dd->ipath_ports_extrabuf);
	dd->ipath_lastpioindex = 0;
	dd->ipath_lastpioindexl = dd->ipath_piobcnt2k;
	/* ipath_pioavailshadow initialized earlier */
	FUNC13(VERBOSE, "%d PIO bufs for kernel out of %d total %u "
		   "each for %u user ports\n", kpiobufs,
		   piobufs, dd->ipath_pbufsport, uports);
	ret = dd->ipath_f_early_init(dd);
	if (ret) {
		FUNC17(dd, "Early initialization failure\n");
		goto done;
	}

	/*
	 * Early_init sets rcvhdrentsize and rcvhdrsize, so this must be
	 * done after early_init.
	 */
	dd->ipath_hdrqlast =
		dd->ipath_rcvhdrentsize * (dd->ipath_rcvhdrcnt - 1);
	FUNC20(dd, dd->ipath_kregs->kr_rcvhdrentsize,
			 dd->ipath_rcvhdrentsize);
	FUNC20(dd, dd->ipath_kregs->kr_rcvhdrsize,
			 dd->ipath_rcvhdrsize);

	if (!reinit) {
		ret = FUNC9(dd);
		FUNC10(dd);
		if (ret)
			goto done;
	}

	FUNC20(dd, dd->ipath_kregs->kr_sendpioavailaddr,
			 dd->ipath_pioavailregs_phys);

	/*
	 * this is to detect s/w errors, which the h/w works around by
	 * ignoring the low 6 bits of address, if it wasn't aligned.
	 */
	val = FUNC19(dd, dd->ipath_kregs->kr_sendpioavailaddr);
	if (val != dd->ipath_pioavailregs_phys) {
		FUNC17(dd, "Catastrophic software error, "
			      "SendPIOAvailAddr written as %lx, "
			      "read back as %llx\n",
			      (unsigned long) dd->ipath_pioavailregs_phys,
			      (unsigned long long) val);
		ret = -EINVAL;
		goto done;
	}

	FUNC20(dd, dd->ipath_kregs->kr_rcvbthqp, IPATH_KD_QP);

	/*
	 * make sure we are not in freeze, and PIO send enabled, so
	 * writes to pbc happen
	 */
	FUNC20(dd, dd->ipath_kregs->kr_hwerrmask, 0ULL);
	FUNC20(dd, dd->ipath_kregs->kr_hwerrclear,
			 ~0ULL&~INFINIPATH_HWE_MEMBISTFAILED);
	FUNC20(dd, dd->ipath_kregs->kr_control, 0ULL);

	/*
	 * before error clears, since we expect serdes pll errors during
	 * this, the first time after reset
	 */
	if (FUNC2(dd)) {
		FUNC5(&dd->pcidev->dev, "Failed to bringup IB link\n");
		ret = -ENETDOWN;
		goto done;
	}

	/*
	 * clear any "expected" hwerrs from reset and/or initialization
	 * clear any that aren't enabled (at least this once), and then
	 * set the enable mask
	 */
	dd->ipath_f_init_hwerrors(dd);
	FUNC20(dd, dd->ipath_kregs->kr_hwerrclear,
			 ~0ULL&~INFINIPATH_HWE_MEMBISTFAILED);
	FUNC20(dd, dd->ipath_kregs->kr_hwerrmask,
			 dd->ipath_hwerrmask);

	/* clear all */
	FUNC20(dd, dd->ipath_kregs->kr_errorclear, -1LL);
	/* enable errors that are masked, at least this first time. */
	FUNC20(dd, dd->ipath_kregs->kr_errormask,
			 ~dd->ipath_maskederrs);
	dd->ipath_maskederrs = 0; /* don't re-enable ignored in timer */
	dd->ipath_errormask =
		FUNC19(dd, dd->ipath_kregs->kr_errormask);
	/* clear any interrupts up to this point (ints still not enabled) */
	FUNC20(dd, dd->ipath_kregs->kr_intclear, -1LL);

	dd->ipath_f_tidtemplate(dd);

	/*
	 * Set up the port 0 (kernel) rcvhdr q and egr TIDs.  If doing
	 * re-init, the simplest way to handle this is to free
	 * existing, and re-allocate.
	 * Need to re-create rest of port 0 portdata as well.
	 */
	pd = dd->ipath_pd[0];
	if (reinit) {
		struct ipath_portdata *npd;

		/*
		 * Alloc and init new ipath_portdata for port0,
		 * Then free old pd. Could lead to fragmentation, but also
		 * makes later support for hot-swap easier.
		 */
		npd = FUNC4(dd);
		if (npd) {
			FUNC18(dd, pd);
			dd->ipath_pd[0] = npd;
			pd = npd;
		} else {
			FUNC17(dd, "Unable to allocate portdata"
				      " for port 0, failing\n");
			ret = -ENOMEM;
			goto done;
		}
	}
	ret = FUNC15(dd, pd);
	if (!ret)
		ret = FUNC3(dd);
	if (ret) {
		FUNC17(dd, "failed to allocate kernel port's "
			      "rcvhdrq and/or egr bufs\n");
		goto done;
	}
	else
		FUNC7(dd, reinit);

	/* after enable_chip, so pioavailshadow setup */
	FUNC14(dd, 0, piobufs, 1);

	/*
	 * Cancel any possible active sends from early driver load.
	 * Follows early_init because some chips have to initialize
	 * PIO buffers in early_init to avoid false parity errors.
	 * After enable and ipath_chg_pioavailkernel so we can safely
	 * enable pioavail updates and PIOENABLE; packets are now
	 * ready to go out.
	 */
	FUNC12(dd, 1);

	if (!reinit) {
		/*
		 * Used when we close a port, for DMA already in flight
		 * at close.
		 */
		dd->ipath_dummy_hdrq = FUNC6(
			&dd->pcidev->dev, dd->ipath_pd[0]->port_rcvhdrq_size,
			&dd->ipath_dummy_hdrq_phys,
			gfp_flags);
		if (!dd->ipath_dummy_hdrq) {
			FUNC5(&dd->pcidev->dev,
				"Couldn't allocate 0x%lx bytes for dummy hdrq\n",
				dd->ipath_pd[0]->port_rcvhdrq_size);
			/* fallback to just 0'ing */
			dd->ipath_dummy_hdrq_phys = 0UL;
		}
	}

	/*
	 * cause retrigger of pending interrupts ignored during init,
	 * even if we had errors
	 */
	FUNC20(dd, dd->ipath_kregs->kr_intclear, 0ULL);

	if (!dd->ipath_stats_timer_active) {
		/*
		 * first init, or after an admin disable/enable
		 * set up stats retrieval timer, even if we had errors
		 * in last portion of setup
		 */
		FUNC11(&dd->ipath_stats_timer);
		dd->ipath_stats_timer.function = ipath_get_faststats;
		dd->ipath_stats_timer.data = (unsigned long) dd;
		/* every 5 seconds; */
		dd->ipath_stats_timer.expires = jiffies + 5 * HZ;
		/* takes ~16 seconds to overflow at full IB 4x bandwdith */
		FUNC1(&dd->ipath_stats_timer);
		dd->ipath_stats_timer_active = 1;
	}

	/* Set up SendDMA if chip supports it */
	if (dd->ipath_flags & IPATH_HAS_SEND_DMA)
		ret = FUNC22(dd);

	/* Set up HoL state */
	FUNC11(&dd->ipath_hol_timer);
	dd->ipath_hol_timer.function = ipath_hol_event;
	dd->ipath_hol_timer.data = (unsigned long)dd;
	dd->ipath_hol_state = IPATH_HOL_UP;

done:
	if (!ret) {
		*dd->ipath_statusp |= IPATH_STATUS_CHIP_PRESENT;
		if (!dd->ipath_f_intrsetup(dd)) {
			/* now we can enable all interrupts from the chip */
			FUNC20(dd, dd->ipath_kregs->kr_intmask,
					 -1LL);
			/* force re-interrupt of any pending interrupts. */
			FUNC20(dd, dd->ipath_kregs->kr_intclear,
					 0ULL);
			/* chip is usable; mark it as initialized */
			*dd->ipath_statusp |= IPATH_STATUS_INITTED;

			/*
			 * setup to verify we get an interrupt, and fallback
			 * to an alternate if necessary and possible
			 */
			if (!reinit) {
				FUNC11(&dd->ipath_intrchk_timer);
				dd->ipath_intrchk_timer.function =
					verify_interrupt;
				dd->ipath_intrchk_timer.data =
					(unsigned long) dd;
			}
			dd->ipath_intrchk_timer.expires = jiffies + HZ/2;
			FUNC1(&dd->ipath_intrchk_timer);
		} else
			FUNC17(dd, "No interrupts enabled, couldn't "
				      "setup interrupt address\n");

		if (dd->ipath_cfgports > ipath_stats.sps_nports)
			/*
			 * sps_nports is a global, so, we set it to
			 * the highest number of ports of any of the
			 * chips we find; we never decrement it, at
			 * least for now.  Since this might have changed
			 * over disable/enable or prior to reset, always
			 * do the check and potentially adjust.
			 */
			ipath_stats.sps_nports = dd->ipath_cfgports;
	} else
		FUNC16("Failed (%d) to initialize chip\n", ret);

	/* if ret is non-zero, we probably should do some cleanup
	   here... */
	return ret;
}