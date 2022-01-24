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
typedef  int u16 ;
struct qib_pportdata {int* pkeys; TYPE_1__* dd; int /*<<< orphan*/ * pkeyrefs; } ;
struct qib_ctxtdata {int* pkeys; struct qib_pportdata* ppd; } ;
typedef  int /*<<< orphan*/  atomic_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* f_set_ib_cfg ) (struct qib_pportdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int EBUSY ; 
 int EEXIST ; 
 int EINVAL ; 
 int QIB_DEFAULT_P_KEY ; 
 int /*<<< orphan*/  QIB_IB_CFG_PKEYS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct qib_pportdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct qib_ctxtdata *rcd, u16 key)
{
	struct qib_pportdata *ppd = rcd->ppd;
	int i, any = 0, pidx = -1;
	u16 lkey = key & 0x7FFF;
	int ret;

	if (lkey == (QIB_DEFAULT_P_KEY & 0x7FFF)) {
		/* nothing to do; this key always valid */
		ret = 0;
		goto bail;
	}

	if (!lkey) {
		ret = -EINVAL;
		goto bail;
	}

	/*
	 * Set the full membership bit, because it has to be
	 * set in the register or the packet, and it seems
	 * cleaner to set in the register than to force all
	 * callers to set it.
	 */
	key |= 0x8000;

	for (i = 0; i < FUNC0(rcd->pkeys); i++) {
		if (!rcd->pkeys[i] && pidx == -1)
			pidx = i;
		if (rcd->pkeys[i] == key) {
			ret = -EEXIST;
			goto bail;
		}
	}
	if (pidx == -1) {
		ret = -EBUSY;
		goto bail;
	}
	for (any = i = 0; i < FUNC0(ppd->pkeys); i++) {
		if (!ppd->pkeys[i]) {
			any++;
			continue;
		}
		if (ppd->pkeys[i] == key) {
			atomic_t *pkrefs = &ppd->pkeyrefs[i];

			if (FUNC2(pkrefs) > 1) {
				rcd->pkeys[pidx] = key;
				ret = 0;
				goto bail;
			} else {
				/*
				 * lost race, decrement count, catch below
				 */
				FUNC1(pkrefs);
				any++;
			}
		}
		if ((ppd->pkeys[i] & 0x7FFF) == lkey) {
			/*
			 * It makes no sense to have both the limited and
			 * full membership PKEY set at the same time since
			 * the unlimited one will disable the limited one.
			 */
			ret = -EEXIST;
			goto bail;
		}
	}
	if (!any) {
		ret = -EBUSY;
		goto bail;
	}
	for (any = i = 0; i < FUNC0(ppd->pkeys); i++) {
		if (!ppd->pkeys[i] &&
		    FUNC2(&ppd->pkeyrefs[i]) == 1) {
			rcd->pkeys[pidx] = key;
			ppd->pkeys[i] = key;
			(void) ppd->dd->f_set_ib_cfg(ppd, QIB_IB_CFG_PKEYS, 0);
			ret = 0;
			goto bail;
		}
	}
	ret = -EBUSY;

bail:
	return ret;
}