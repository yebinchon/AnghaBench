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
struct qib_devdata {int flags; TYPE_1__* cspec; int /*<<< orphan*/  pcidev; } ;
struct TYPE_2__ {unsigned long errormask; unsigned long hwerrmask; } ;

/* Variables and functions */
 int QIB_INITTED ; 
 int QLOGIC_IB_C_FREEZEMODE ; 
 int /*<<< orphan*/  kr_control ; 
 int /*<<< orphan*/  kr_errclear ; 
 int /*<<< orphan*/  kr_errmask ; 
 int /*<<< orphan*/  kr_hwerrclear ; 
 int /*<<< orphan*/  kr_hwerrstatus ; 
 int /*<<< orphan*/  kr_intclear ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,unsigned long,unsigned long,int,unsigned long) ; 
 int FUNC1 (struct qib_devdata*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (struct qib_devdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qib_devdata*,int /*<<< orphan*/ ,unsigned long long) ; 

__attribute__((used)) static void FUNC4(struct qib_devdata *dd)
{
	static u32 fixed;
	u32 ctrl;
	unsigned long errormask;
	unsigned long hwerrs;

	if (!dd->cspec->errormask || !(dd->flags & QIB_INITTED))
		return;

	errormask = FUNC2(dd, kr_errmask);

	if (errormask == dd->cspec->errormask)
		return;
	fixed++;

	hwerrs = FUNC2(dd, kr_hwerrstatus);
	ctrl = FUNC1(dd, kr_control);

	FUNC3(dd, kr_errmask,
		dd->cspec->errormask);

	if ((hwerrs & dd->cspec->hwerrmask) ||
	    (ctrl & QLOGIC_IB_C_FREEZEMODE)) {
		FUNC3(dd, kr_hwerrclear, 0ULL);
		FUNC3(dd, kr_errclear, 0ULL);
		/* force re-interrupt of pending events, just in case */
		FUNC3(dd, kr_intclear, 0ULL);
		FUNC0(dd->pcidev,
			 "errormask fixed(%u) %lx->%lx, ctrl %x hwerr %lx\n",
			 fixed, errormask, (unsigned long)dd->cspec->errormask,
			 ctrl, hwerrs);
	}
}