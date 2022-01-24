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
typedef  size_t u64 ;
typedef  int u32 ;
struct ipath_devdata {int ipath_state_wanted; int ipath_flags; size_t ibcs_lts_mask; TYPE_1__* ipath_kregs; } ;
struct TYPE_2__ {int /*<<< orphan*/  kr_ibcctrl; int /*<<< orphan*/  kr_ibcstatus; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int IPATH_LINKARMED ; 
 int IPATH_LINKDOWN ; 
 int IPATH_LINKINIT ; 
 int /*<<< orphan*/  VERBOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * ipath_ibcstatus_str ; 
 size_t FUNC1 (struct ipath_devdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ipath_state_wait ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int FUNC4(struct ipath_devdata *dd, u32 state, int msecs)
{
	dd->ipath_state_wanted = state;
	FUNC3(ipath_state_wait,
					 (dd->ipath_flags & state),
					 FUNC2(msecs));
	dd->ipath_state_wanted = 0;

	if (!(dd->ipath_flags & state)) {
		u64 val;
		FUNC0(VERBOSE, "Didn't reach linkstate %s within %u"
			   " ms\n",
			   /* test INIT ahead of DOWN, both can be set */
			   (state & IPATH_LINKINIT) ? "INIT" :
			   ((state & IPATH_LINKDOWN) ? "DOWN" :
			    ((state & IPATH_LINKARMED) ? "ARM" : "ACTIVE")),
			   msecs);
		val = FUNC1(dd, dd->ipath_kregs->kr_ibcstatus);
		FUNC0(VERBOSE, "ibcc=%llx ibcstatus=%llx (%s)\n",
			   (unsigned long long) FUNC1(
				   dd, dd->ipath_kregs->kr_ibcctrl),
			   (unsigned long long) val,
			   ipath_ibcstatus_str[val & dd->ibcs_lts_mask]);
	}
	return (dd->ipath_flags & state) ? 0 : -ETIMEDOUT;
}