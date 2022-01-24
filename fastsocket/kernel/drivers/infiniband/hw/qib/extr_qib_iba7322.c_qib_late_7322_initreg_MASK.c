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
typedef  scalar_t__ u64 ;
struct qib_pportdata {int dummy; } ;
struct qib_devdata {scalar_t__ rcvhdrentsize; scalar_t__ rcvhdrsize; scalar_t__ rcvhdrcnt; scalar_t__ pioavailregs_phys; int piobcnt2k; int piobcnt4k; scalar_t__ control; int num_pports; int flags; struct qib_pportdata* pport; } ;

/* Variables and functions */
 int EINVAL ; 
 int NUM_VL15_BUFS ; 
 int QIB_HAS_QSFP ; 
 scalar_t__ QLOGIC_IB_C_SDMAFETCHPRIOEN ; 
 int /*<<< orphan*/  TXCHK_CHG_TYPE_ENAB1 ; 
 int /*<<< orphan*/  TXCHK_CHG_TYPE_KERN ; 
 int /*<<< orphan*/  kr_control ; 
 int /*<<< orphan*/  kr_rcvhdrcnt ; 
 int /*<<< orphan*/  kr_rcvhdrentsize ; 
 int /*<<< orphan*/  kr_rcvhdrsize ; 
 int /*<<< orphan*/  kr_sendpioavailaddr ; 
 int /*<<< orphan*/  krp_senddmaprioritythld ; 
 int /*<<< orphan*/  FUNC0 (struct qib_devdata*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct qib_devdata*,char*,unsigned long,unsigned long long) ; 
 int /*<<< orphan*/  FUNC2 (struct qib_pportdata*) ; 
 scalar_t__ FUNC3 (struct qib_devdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct qib_devdata*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct qib_devdata*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct qib_pportdata*,int /*<<< orphan*/ ,int) ; 
 int sdma_fetch_prio ; 
 int /*<<< orphan*/  sendctrl_0_observer ; 
 int /*<<< orphan*/  sendctrl_1_observer ; 
 int /*<<< orphan*/  FUNC7 (struct qib_devdata*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct qib_devdata *dd)
{
	int ret = 0, n;
	u64 val;

	FUNC5(dd, kr_rcvhdrentsize, dd->rcvhdrentsize);
	FUNC5(dd, kr_rcvhdrsize, dd->rcvhdrsize);
	FUNC5(dd, kr_rcvhdrcnt, dd->rcvhdrcnt);
	FUNC5(dd, kr_sendpioavailaddr, dd->pioavailregs_phys);
	val = FUNC3(dd, kr_sendpioavailaddr);
	if (val != dd->pioavailregs_phys) {
		FUNC1(dd,
			"Catastrophic software error, SendPIOAvailAddr written as %lx, read back as %llx\n",
			(unsigned long) dd->pioavailregs_phys,
			(unsigned long long) val);
		ret = -EINVAL;
	}

	n = dd->piobcnt2k + dd->piobcnt4k + NUM_VL15_BUFS;
	FUNC0(dd, 0, n, TXCHK_CHG_TYPE_KERN, NULL);
	/* driver sends get pkey, lid, etc. checking also, to catch bugs */
	FUNC0(dd, 0, n, TXCHK_CHG_TYPE_ENAB1, NULL);

	FUNC4(dd, &sendctrl_0_observer);
	FUNC4(dd, &sendctrl_1_observer);

	dd->control &= ~QLOGIC_IB_C_SDMAFETCHPRIOEN;
	FUNC5(dd, kr_control, dd->control);
	/*
	 * Set SendDmaFetchPriority and init Tx params, including
	 * QSFP handler on boards that have QSFP.
	 * First set our default attenuation entry for cables that
	 * don't have valid attenuation.
	 */
	FUNC7(dd, 0);
	for (n = 0; n < dd->num_pports; ++n) {
		struct qib_pportdata *ppd = dd->pport + n;

		FUNC6(ppd, krp_senddmaprioritythld,
				    sdma_fetch_prio & 0xf);
		/* Initialize qsfp if present on board. */
		if (dd->flags & QIB_HAS_QSFP)
			FUNC2(ppd);
	}
	dd->control |= QLOGIC_IB_C_SDMAFETCHPRIOEN;
	FUNC5(dd, kr_control, dd->control);

	return ret;
}