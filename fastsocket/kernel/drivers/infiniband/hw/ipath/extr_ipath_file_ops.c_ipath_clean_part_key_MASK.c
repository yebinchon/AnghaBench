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
struct ipath_portdata {int* port_pkeys; int /*<<< orphan*/  port_port; } ;
struct ipath_devdata {int* ipath_pkeys; TYPE_1__* ipath_kregs; int /*<<< orphan*/ * ipath_pkeyrefs; } ;
struct TYPE_4__ {int* sps_pkeys; } ;
struct TYPE_3__ {int /*<<< orphan*/  kr_partitionkey; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  VERBOSE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,unsigned long long,...) ; 
 TYPE_2__ ipath_stats ; 
 int /*<<< orphan*/  FUNC4 (struct ipath_devdata*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct ipath_portdata *pd,
				 struct ipath_devdata *dd)
{
	int i, j, pchanged = 0;
	u64 oldpkey;

	/* for debugging only */
	oldpkey = (u64) dd->ipath_pkeys[0] |
		((u64) dd->ipath_pkeys[1] << 16) |
		((u64) dd->ipath_pkeys[2] << 32) |
		((u64) dd->ipath_pkeys[3] << 48);

	for (i = 0; i < FUNC0(pd->port_pkeys); i++) {
		if (!pd->port_pkeys[i])
			continue;
		FUNC3(VERBOSE, "look for key[%d] %hx in pkeys\n", i,
			   pd->port_pkeys[i]);
		for (j = 0; j < FUNC0(dd->ipath_pkeys); j++) {
			/* check for match independent of the global bit */
			if ((dd->ipath_pkeys[j] & 0x7fff) !=
			    (pd->port_pkeys[i] & 0x7fff))
				continue;
			if (FUNC1(&dd->ipath_pkeyrefs[j])) {
				FUNC3(VERBOSE, "p%u clear key "
					   "%x matches #%d\n",
					   pd->port_port,
					   pd->port_pkeys[i], j);
				ipath_stats.sps_pkeys[j] =
					dd->ipath_pkeys[j] = 0;
				pchanged++;
			}
			else FUNC3(
				VERBOSE, "p%u key %x matches #%d, "
				"but ref still %d\n", pd->port_port,
				pd->port_pkeys[i], j,
				FUNC2(&dd->ipath_pkeyrefs[j]));
			break;
		}
		pd->port_pkeys[i] = 0;
	}
	if (pchanged) {
		u64 pkey = (u64) dd->ipath_pkeys[0] |
			((u64) dd->ipath_pkeys[1] << 16) |
			((u64) dd->ipath_pkeys[2] << 32) |
			((u64) dd->ipath_pkeys[3] << 48);
		FUNC3(VERBOSE, "p%u old pkey reg %llx, "
			   "new pkey reg %llx\n", pd->port_port,
			   (unsigned long long) oldpkey,
			   (unsigned long long) pkey);
		FUNC4(dd, dd->ipath_kregs->kr_partitionkey,
				 pkey);
	}
}