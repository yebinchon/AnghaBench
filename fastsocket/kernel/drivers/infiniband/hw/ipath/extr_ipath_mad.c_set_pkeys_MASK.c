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
typedef  int u16 ;
struct ipath_portdata {int* port_pkeys; } ;
struct ipath_devdata {TYPE_1__* ipath_kregs; scalar_t__* ipath_pkeys; struct ipath_portdata** ipath_pd; } ;
struct TYPE_2__ {int /*<<< orphan*/  kr_partitionkey; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  VERBOSE ; 
 int FUNC1 (struct ipath_devdata*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC3 (struct ipath_devdata*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct ipath_devdata*,int) ; 

__attribute__((used)) static int FUNC5(struct ipath_devdata *dd, u16 *pkeys)
{
	struct ipath_portdata *pd;
	int i;
	int changed = 0;

	/* always a kernel port, no locking needed */
	pd = dd->ipath_pd[0];

	for (i = 0; i < FUNC0(pd->port_pkeys); i++) {
		u16 key = pkeys[i];
		u16 okey = pd->port_pkeys[i];

		if (key == okey)
			continue;
		/*
		 * The value of this PKEY table entry is changing.
		 * Remove the old entry in the hardware's array of PKEYs.
		 */
		if (okey & 0x7FFF)
			changed |= FUNC4(dd, okey);
		if (key & 0x7FFF) {
			int ret = FUNC1(dd, key);

			if (ret < 0)
				key = 0;
			else
				changed |= ret;
		}
		pd->port_pkeys[i] = key;
	}
	if (changed) {
		u64 pkey;

		pkey = (u64) dd->ipath_pkeys[0] |
			((u64) dd->ipath_pkeys[1] << 16) |
			((u64) dd->ipath_pkeys[2] << 32) |
			((u64) dd->ipath_pkeys[3] << 48);
		FUNC2(VERBOSE, "p0 new pkey reg %llx\n",
			   (unsigned long long) pkey);
		FUNC3(dd, dd->ipath_kregs->kr_partitionkey,
				 pkey);
	}
	return 0;
}