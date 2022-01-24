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
typedef  int /*<<< orphan*/  u32 ;
struct ipath_devdata {int ipath_lasterror; } ;
typedef  int ipath_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ERRPKT ; 
 int INFINIPATH_E_IBSTATUSCHANGED ; 
 int INFINIPATH_E_PKTERRS ; 
 int INFINIPATH_E_RRCVEGRFULL ; 
 int INFINIPATH_E_RRCVHDRFULL ; 
 int INFINIPATH_E_SDMADISABLED ; 
 int __IPATH_DBG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int,char*) ; 
 int ipath_debug ; 
 int FUNC2 (struct ipath_devdata*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ipath_devdata*,char*,unsigned int,char*,unsigned long long) ; 

__attribute__((used)) static void FUNC4(struct ipath_devdata *dd,
			     unsigned supp_msgs, char *msg, u32 msgsz)
{
	/*
	 * Print the message unless it's ibc status change only, which
	 * happens so often we never want to count it.
	 */
	if (dd->ipath_lasterror & ~INFINIPATH_E_IBSTATUSCHANGED) {
		int iserr;
		ipath_err_t mask;
		iserr = FUNC2(dd, msg, msgsz,
					 dd->ipath_lasterror &
					 ~INFINIPATH_E_IBSTATUSCHANGED);

		mask = INFINIPATH_E_RRCVEGRFULL | INFINIPATH_E_RRCVHDRFULL |
			INFINIPATH_E_PKTERRS | INFINIPATH_E_SDMADISABLED;

		/* if we're in debug, then don't mask SDMADISABLED msgs */
		if (ipath_debug & __IPATH_DBG)
			mask &= ~INFINIPATH_E_SDMADISABLED;

		if (dd->ipath_lasterror & ~mask)
			FUNC3(dd, "Suppressed %u messages for "
				      "fast-repeating errors (%s) (%llx)\n",
				      supp_msgs, msg,
				      (unsigned long long)
				      dd->ipath_lasterror);
		else {
			/*
			 * rcvegrfull and rcvhdrqfull are "normal", for some
			 * types of processes (mostly benchmarks) that send
			 * huge numbers of messages, while not processing
			 * them. So only complain about these at debug
			 * level.
			 */
			if (iserr)
				FUNC1("Suppressed %u messages for %s\n",
					  supp_msgs, msg);
			else
				FUNC0(ERRPKT,
					"Suppressed %u messages for %s\n",
					  supp_msgs, msg);
		}
	}
}