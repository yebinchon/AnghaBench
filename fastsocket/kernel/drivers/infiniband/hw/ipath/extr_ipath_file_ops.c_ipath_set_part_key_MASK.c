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
typedef  int u16 ;
struct ipath_portdata {int* port_pkeys; int /*<<< orphan*/  port_port; struct ipath_devdata* port_dd; } ;
struct ipath_devdata {int* ipath_pkeys; TYPE_1__* ipath_kregs; int /*<<< orphan*/ * ipath_pkeyrefs; } ;
typedef  int /*<<< orphan*/  atomic_t ;
struct TYPE_4__ {int* sps_pkeys; } ;
struct TYPE_3__ {int /*<<< orphan*/  kr_partitionkey; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int EBUSY ; 
 int EEXIST ; 
 int EINVAL ; 
 int IPATH_DEFAULT_P_KEY ; 
 int /*<<< orphan*/  PROC ; 
 int /*<<< orphan*/  VERBOSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 TYPE_2__ ipath_stats ; 
 int /*<<< orphan*/  FUNC6 (struct ipath_devdata*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct ipath_portdata *pd, u16 key)
{
	struct ipath_devdata *dd = pd->port_dd;
	int i, any = 0, pidx = -1;
	u16 lkey = key & 0x7FFF;
	int ret;

	if (lkey == (IPATH_DEFAULT_P_KEY & 0x7FFF)) {
		/* nothing to do; this key always valid */
		ret = 0;
		goto bail;
	}

	FUNC4(VERBOSE, "p%u try to set pkey %hx, current keys "
		   "%hx:%x %hx:%x %hx:%x %hx:%x\n",
		   pd->port_port, key, dd->ipath_pkeys[0],
		   FUNC3(&dd->ipath_pkeyrefs[0]), dd->ipath_pkeys[1],
		   FUNC3(&dd->ipath_pkeyrefs[1]), dd->ipath_pkeys[2],
		   FUNC3(&dd->ipath_pkeyrefs[2]), dd->ipath_pkeys[3],
		   FUNC3(&dd->ipath_pkeyrefs[3]));

	if (!lkey) {
		FUNC4(PROC, "p%u tries to set key 0, not allowed\n",
			   pd->port_port);
		ret = -EINVAL;
		goto bail;
	}

	/*
	 * Set the full membership bit, because it has to be
	 * set in the register or the packet, and it seems
	 * cleaner to set in the register than to force all
	 * callers to set it. (see bug 4331)
	 */
	key |= 0x8000;

	for (i = 0; i < FUNC0(pd->port_pkeys); i++) {
		if (!pd->port_pkeys[i] && pidx == -1)
			pidx = i;
		if (pd->port_pkeys[i] == key) {
			FUNC4(VERBOSE, "p%u tries to set same pkey "
				   "(%x) more than once\n",
				   pd->port_port, key);
			ret = -EEXIST;
			goto bail;
		}
	}
	if (pidx == -1) {
		FUNC5("All pkeys for port %u already in use, "
			  "can't set %x\n", pd->port_port, key);
		ret = -EBUSY;
		goto bail;
	}
	for (any = i = 0; i < FUNC0(dd->ipath_pkeys); i++) {
		if (!dd->ipath_pkeys[i]) {
			any++;
			continue;
		}
		if (dd->ipath_pkeys[i] == key) {
			atomic_t *pkrefs = &dd->ipath_pkeyrefs[i];

			if (FUNC2(pkrefs) > 1) {
				pd->port_pkeys[pidx] = key;
				FUNC4(VERBOSE, "p%u set key %x "
					   "matches #%d, count now %d\n",
					   pd->port_port, key, i,
					   FUNC3(pkrefs));
				ret = 0;
				goto bail;
			} else {
				/*
				 * lost race, decrement count, catch below
				 */
				FUNC1(pkrefs);
				FUNC4(VERBOSE, "Lost race, count was "
					   "0, after dec, it's %d\n",
					   FUNC3(pkrefs));
				any++;
			}
		}
		if ((dd->ipath_pkeys[i] & 0x7FFF) == lkey) {
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
		FUNC5("port %u, all pkeys already in use, "
			  "can't set %x\n", pd->port_port, key);
		ret = -EBUSY;
		goto bail;
	}
	for (any = i = 0; i < FUNC0(dd->ipath_pkeys); i++) {
		if (!dd->ipath_pkeys[i] &&
		    FUNC2(&dd->ipath_pkeyrefs[i]) == 1) {
			u64 pkey;

			/* for ipathstats, etc. */
			ipath_stats.sps_pkeys[i] = lkey;
			pd->port_pkeys[pidx] = dd->ipath_pkeys[i] = key;
			pkey =
				(u64) dd->ipath_pkeys[0] |
				((u64) dd->ipath_pkeys[1] << 16) |
				((u64) dd->ipath_pkeys[2] << 32) |
				((u64) dd->ipath_pkeys[3] << 48);
			FUNC4(PROC, "p%u set key %x in #%d, "
				   "portidx %d, new pkey reg %llx\n",
				   pd->port_port, key, i, pidx,
				   (unsigned long long) pkey);
			FUNC6(
				dd, dd->ipath_kregs->kr_partitionkey, pkey);

			ret = 0;
			goto bail;
		}
	}
	FUNC5("port %u, all pkeys already in use 2nd pass, "
		  "can't set %x\n", pd->port_port, key);
	ret = -EBUSY;

bail:
	return ret;
}