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
typedef  unsigned long long u64 ;
struct qib_devdata {TYPE_1__* cspec; } ;
struct TYPE_2__ {unsigned long long hwerrmask; int /*<<< orphan*/  sdepb_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_7220_SERDES ; 
 int /*<<< orphan*/  IB_MPREG5 ; 
 int /*<<< orphan*/  IB_MPREG6 ; 
 unsigned long long QLOGIC_IB_HWE_IB_UC_MEMORYPARITYERR ; 
 int /*<<< orphan*/  FUNC0 (struct qib_devdata*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  kr_hwerrmask ; 
 int /*<<< orphan*/  kr_hwerrstatus ; 
 int /*<<< orphan*/  kr_ibserdesctrl ; 
 int /*<<< orphan*/  kr_scratch ; 
 int /*<<< orphan*/  FUNC1 (struct qib_devdata*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct qib_devdata*,int /*<<< orphan*/ ) ; 
 unsigned long long FUNC3 (struct qib_devdata*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct qib_devdata*) ; 
 int /*<<< orphan*/  FUNC5 (struct qib_devdata*) ; 
 int FUNC6 (struct qib_devdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct qib_devdata*,int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(struct qib_devdata *dd, int assert_rst)
{
	u64 rst_val;
	int ret = 0;
	unsigned long flags;

	rst_val = FUNC3(dd, kr_ibserdesctrl);
	if (assert_rst) {
		/*
		 * Vendor recommends "interrupting" uC before reset, to
		 * minimize possible glitches.
		 */
		FUNC8(&dd->cspec->sdepb_lock, flags);
		FUNC0(dd, IB_7220_SERDES, 1);
		rst_val |= 1ULL;
		/* Squelch possible parity error from _asserting_ reset */
		FUNC7(dd, kr_hwerrmask,
			       dd->cspec->hwerrmask &
			       ~QLOGIC_IB_HWE_IB_UC_MEMORYPARITYERR);
		FUNC7(dd, kr_ibserdesctrl, rst_val);
		/* flush write, delay to ensure it took effect */
		FUNC2(dd, kr_scratch);
		FUNC10(2);
		/* once it's reset, can remove interrupt */
		FUNC0(dd, IB_7220_SERDES, -1);
		FUNC9(&dd->cspec->sdepb_lock, flags);
	} else {
		/*
		 * Before we de-assert reset, we need to deal with
		 * possible glitch on the Parity-error line.
		 * Suppress it around the reset, both in chip-level
		 * hwerrmask and in IB uC control reg. uC will allow
		 * it again during startup.
		 */
		u64 val;
		rst_val &= ~(1ULL);
		FUNC7(dd, kr_hwerrmask,
			       dd->cspec->hwerrmask &
			       ~QLOGIC_IB_HWE_IB_UC_MEMORYPARITYERR);

		ret = FUNC4(dd);
		if (ret < 0)
			FUNC1(dd, "unable to re-sync IB EPB\n");

		/* set uC control regs to suppress parity errs */
		ret = FUNC6(dd, IB_7220_SERDES, IB_MPREG5, 1, 1);
		if (ret < 0)
			goto bail;
		/* IB uC code past Version 1.32.17 allow suppression of wdog */
		ret = FUNC6(dd, IB_7220_SERDES, IB_MPREG6, 0x80,
			0x80);
		if (ret < 0) {
			FUNC1(dd, "Failed to set WDOG disable\n");
			goto bail;
		}
		FUNC7(dd, kr_ibserdesctrl, rst_val);
		/* flush write, delay for startup */
		FUNC2(dd, kr_scratch);
		FUNC10(1);
		/* clear, then re-enable parity errs */
		FUNC5(dd);
		val = FUNC3(dd, kr_hwerrstatus);
		if (val & QLOGIC_IB_HWE_IB_UC_MEMORYPARITYERR) {
			FUNC1(dd, "IBUC Parity still set after RST\n");
			dd->cspec->hwerrmask &=
				~QLOGIC_IB_HWE_IB_UC_MEMORYPARITYERR;
		}
		FUNC7(dd, kr_hwerrmask,
			dd->cspec->hwerrmask);
	}

bail:
	return ret;
}