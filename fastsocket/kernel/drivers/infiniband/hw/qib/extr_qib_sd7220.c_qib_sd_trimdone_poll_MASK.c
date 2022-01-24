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
typedef  int uint64_t ;
struct qib_devdata {int dummy; } ;

/* Variables and functions */
 int IB_SERDES_TRIM_DONE ; 
 int TRIM_TMO ; 
 int /*<<< orphan*/  kr_ibcstatus ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct qib_devdata*,char*,int) ; 
 int FUNC2 (struct qib_devdata*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct qib_devdata *dd)
{
	int trim_tmo, ret;
	uint64_t val;

	/*
	 * Default to failure, so IBC will not start
	 * without IB_SERDES_TRIM_DONE.
	 */
	ret = 0;
	for (trim_tmo = 0; trim_tmo < TRIM_TMO; ++trim_tmo) {
		val = FUNC2(dd, kr_ibcstatus);
		if (val & IB_SERDES_TRIM_DONE) {
			ret = 1;
			break;
		}
		FUNC0(10);
	}
	if (trim_tmo >= TRIM_TMO) {
		FUNC1(dd, "No TRIMDONE in %d tries\n", trim_tmo);
		ret = 0;
	}
	return ret;
}