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
struct ipath_devdata {unsigned long long ipath_control; unsigned long long ipath_errormask; TYPE_1__* ipath_kregs; } ;
struct TYPE_2__ {int /*<<< orphan*/  kr_intclear; int /*<<< orphan*/  kr_intmask; int /*<<< orphan*/  kr_errormask; int /*<<< orphan*/  kr_errorclear; int /*<<< orphan*/  kr_hwerrclear; int /*<<< orphan*/  kr_scratch; int /*<<< orphan*/  kr_control; } ;

/* Variables and functions */
 unsigned long long E_SPKT_ERRS_IGNORE ; 
 int /*<<< orphan*/  FUNC0 (struct ipath_devdata*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ipath_devdata*) ; 
 int /*<<< orphan*/  FUNC2 (struct ipath_devdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ipath_devdata*,int /*<<< orphan*/ ,unsigned long long) ; 

void FUNC4(struct ipath_devdata *dd)
{
	/* disable error interrupts, to avoid confusion */
	FUNC3(dd, dd->ipath_kregs->kr_errormask, 0ULL);

	/* also disable interrupts; errormask is sometimes overwriten */
	FUNC3(dd, dd->ipath_kregs->kr_intmask, 0ULL);

	FUNC0(dd, 1);

	/* clear the freeze, and be sure chip saw it */
	FUNC3(dd, dd->ipath_kregs->kr_control,
			 dd->ipath_control);
	FUNC2(dd, dd->ipath_kregs->kr_scratch);

	/* force in-memory update now we are out of freeze */
	FUNC1(dd);

	/*
	 * force new interrupt if any hwerr, error or interrupt bits are
	 * still set, and clear "safe" send packet errors related to freeze
	 * and cancelling sends.  Re-enable error interrupts before possible
	 * force of re-interrupt on pending interrupts.
	 */
	FUNC3(dd, dd->ipath_kregs->kr_hwerrclear, 0ULL);
	FUNC3(dd, dd->ipath_kregs->kr_errorclear,
		E_SPKT_ERRS_IGNORE);
	FUNC3(dd, dd->ipath_kregs->kr_errormask,
		dd->ipath_errormask);
	FUNC3(dd, dd->ipath_kregs->kr_intmask, -1LL);
	FUNC3(dd, dd->ipath_kregs->kr_intclear, 0ULL);
}