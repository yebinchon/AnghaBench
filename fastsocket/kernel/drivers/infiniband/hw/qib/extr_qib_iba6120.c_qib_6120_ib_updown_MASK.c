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
typedef  int /*<<< orphan*/  u64 ;
struct qib_pportdata {TYPE_2__* dd; int /*<<< orphan*/  lflags_lock; int /*<<< orphan*/  lflags; } ;
struct TYPE_4__ {TYPE_1__* cspec; } ;
struct TYPE_3__ {int ibdeltainprog; void* ibsymsnap; void* iblnkerrsnap; scalar_t__ lli_counter; int /*<<< orphan*/  iblnkerrdelta; int /*<<< orphan*/  ibsymdelta; } ;

/* Variables and functions */
 int /*<<< orphan*/  QIBL_IB_FORCE_NOTIFY ; 
 int /*<<< orphan*/  cr_iblinkerrrecov ; 
 int /*<<< orphan*/  cr_ibsymbolerr ; 
 int /*<<< orphan*/  FUNC0 (struct qib_pportdata*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct qib_pportdata*) ; 
 int /*<<< orphan*/  FUNC2 (struct qib_pportdata*) ; 
 void* FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct qib_pportdata *ppd, int ibup, u64 ibcs)
{
	unsigned long flags;

	FUNC4(&ppd->lflags_lock, flags);
	ppd->lflags &= ~QIBL_IB_FORCE_NOTIFY;
	FUNC5(&ppd->lflags_lock, flags);

	if (ibup) {
		if (ppd->dd->cspec->ibdeltainprog) {
			ppd->dd->cspec->ibdeltainprog = 0;
			ppd->dd->cspec->ibsymdelta +=
				FUNC3(ppd->dd, cr_ibsymbolerr) -
					ppd->dd->cspec->ibsymsnap;
			ppd->dd->cspec->iblnkerrdelta +=
				FUNC3(ppd->dd, cr_iblinkerrrecov) -
					ppd->dd->cspec->iblnkerrsnap;
		}
		FUNC2(ppd);
	} else {
		ppd->dd->cspec->lli_counter = 0;
		if (!ppd->dd->cspec->ibdeltainprog) {
			ppd->dd->cspec->ibdeltainprog = 1;
			ppd->dd->cspec->ibsymsnap =
				FUNC3(ppd->dd, cr_ibsymbolerr);
			ppd->dd->cspec->iblnkerrsnap =
				FUNC3(ppd->dd, cr_iblinkerrrecov);
		}
		FUNC1(ppd);
	}

	FUNC0(ppd, ibup);

	return 0;
}