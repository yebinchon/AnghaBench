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
struct ipath_portdata {scalar_t__ port_port; scalar_t__ port_rcvhdrtail_kvaddr; struct ipath_devdata* port_dd; } ;
struct ipath_devdata {TYPE_1__* ipath_kregs; int /*<<< orphan*/  ipath_rcvctrl; scalar_t__ ipath_r_portenable_shift; int /*<<< orphan*/  ipath_unit; } ;
struct TYPE_2__ {int /*<<< orphan*/  kr_scratch; int /*<<< orphan*/  kr_rcvctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  PROC ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct ipath_portdata*) ; 
 int /*<<< orphan*/  FUNC3 (struct ipath_devdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ipath_devdata*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct ipath_devdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ur_rcvhdrtail ; 

__attribute__((used)) static int FUNC7(struct ipath_portdata *pd, unsigned subport,
			     int start_stop)
{
	struct ipath_devdata *dd = pd->port_dd;

	FUNC1(PROC, "%sabling rcv for unit %u port %u:%u\n",
		   start_stop ? "en" : "dis", dd->ipath_unit,
		   pd->port_port, subport);
	if (subport)
		goto bail;
	/* atomically clear receive enable port. */
	if (start_stop) {
		/*
		 * On enable, force in-memory copy of the tail register to
		 * 0, so that protocol code doesn't have to worry about
		 * whether or not the chip has yet updated the in-memory
		 * copy or not on return from the system call. The chip
		 * always resets it's tail register back to 0 on a
		 * transition from disabled to enabled.  This could cause a
		 * problem if software was broken, and did the enable w/o
		 * the disable, but eventually the in-memory copy will be
		 * updated and correct itself, even in the face of software
		 * bugs.
		 */
		if (pd->port_rcvhdrtail_kvaddr)
			FUNC2(pd);
		FUNC6(dd->ipath_r_portenable_shift + pd->port_port,
			&dd->ipath_rcvctrl);
	} else
		FUNC0(dd->ipath_r_portenable_shift + pd->port_port,
			  &dd->ipath_rcvctrl);
	FUNC5(dd, dd->ipath_kregs->kr_rcvctrl,
			 dd->ipath_rcvctrl);
	/* now be sure chip saw it before we return */
	FUNC3(dd, dd->ipath_kregs->kr_scratch);
	if (start_stop) {
		/*
		 * And try to be sure that tail reg update has happened too.
		 * This should in theory interlock with the RXE changes to
		 * the tail register.  Don't assign it to the tail register
		 * in memory copy, since we could overwrite an update by the
		 * chip if we did.
		 */
		FUNC4(dd, ur_rcvhdrtail, pd->port_port);
	}
	/* always; new head should be equal to new tail; see above */
bail:
	return 0;
}