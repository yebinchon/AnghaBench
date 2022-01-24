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
typedef  int u64 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct qib_devdata {TYPE_1__* cspec; } ;
struct TYPE_2__ {int /*<<< orphan*/  sdepb_lock; } ;

/* Variables and functions */
 int EPB_DATA_MASK ; 
 int EPB_RD ; 
 int EPB_TRANS_RDY ; 
 int EPB_TRANS_TRIES ; 
#define  IB_7220_SERDES 130 
#define  PCIE_SERDES0 129 
#define  PCIE_SERDES1 128 
 int FUNC0 (struct qib_devdata*,int,int) ; 
 int FUNC1 (struct qib_devdata*,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  kr_ibsd_epb_transaction_reg ; 
 int /*<<< orphan*/  kr_pciesd_epb_transaction_reg ; 
 int FUNC2 (struct qib_devdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct qib_devdata *dd, int sdnum, u32 loc,
			      u32 wd, u32 mask)
{
	u16 trans;
	u64 transval;
	int owned;
	int tries, ret;
	unsigned long flags;

	switch (sdnum) {
	case IB_7220_SERDES:
		trans = kr_ibsd_epb_transaction_reg;
		break;

	case PCIE_SERDES0:
	case PCIE_SERDES1:
		trans = kr_pciesd_epb_transaction_reg;
		break;

	default:
		return -1;
	}

	/*
	 * All access is locked in software (vs other host threads) and
	 * hardware (vs uC access).
	 */
	FUNC3(&dd->cspec->sdepb_lock, flags);

	owned = FUNC0(dd, sdnum, 1);
	if (owned < 0) {
		FUNC4(&dd->cspec->sdepb_lock, flags);
		return -1;
	}
	ret = 0;
	for (tries = EPB_TRANS_TRIES; tries; --tries) {
		transval = FUNC2(dd, trans);
		if (transval & EPB_TRANS_RDY)
			break;
		FUNC5(5);
	}

	if (tries > 0) {
		tries = 1;      /* to make read-skip work */
		if (mask != 0xFF) {
			/*
			 * Not a pure write, so need to read.
			 * loc encodes chip-select as well as address
			 */
			transval = loc | EPB_RD;
			tries = FUNC1(dd, trans, transval, &transval);
		}
		if (tries > 0 && mask != 0) {
			/*
			 * Not a pure read, so need to write.
			 */
			wd = (wd & mask) | (transval & ~mask);
			transval = loc | (wd & EPB_DATA_MASK);
			tries = FUNC1(dd, trans, transval, &transval);
		}
	}
	/* else, failed to see ready, what error-handling? */

	/*
	 * Release bus. Failure is an error.
	 */
	if (FUNC0(dd, sdnum, -1) < 0)
		ret = -1;
	else
		ret = transval & EPB_DATA_MASK;

	FUNC4(&dd->cspec->sdepb_lock, flags);
	if (tries <= 0)
		ret = -1;
	return ret;
}