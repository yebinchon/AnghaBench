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
struct ipath_devdata {int /*<<< orphan*/  ipath_sdma_lock; int /*<<< orphan*/  ipath_sdma_status; TYPE_1__* ipath_kregs; } ;
typedef  int ipath_err_t ;
struct TYPE_2__ {int /*<<< orphan*/  kr_senddmalengen; int /*<<< orphan*/  kr_senddmastatus; int /*<<< orphan*/  kr_senddmahead; int /*<<< orphan*/  kr_senddmatail; } ;

/* Variables and functions */
 int INFINIPATH_E_SDMAERRS ; 
 int /*<<< orphan*/  IPATH_SDMA_ABORTING ; 
 int /*<<< orphan*/  IPATH_SDMA_DISABLED ; 
 int /*<<< orphan*/  VERBOSE ; 
 int __IPATH_DBG ; 
 int __IPATH_VERBDBG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ipath_devdata*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned long,unsigned long,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned long,char*) ; 
 int ipath_debug ; 
 int /*<<< orphan*/  FUNC4 (struct ipath_devdata*,char*,int,int) ; 
 unsigned long FUNC5 (struct ipath_devdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct ipath_devdata *dd, ipath_err_t errs)
{
	unsigned long flags;
	int expected;

	if (ipath_debug & __IPATH_DBG) {
		char msg[128];
		FUNC4(dd, msg, sizeof msg, errs &
			INFINIPATH_E_SDMAERRS);
		FUNC3("errors %lx (%s)\n", (unsigned long)errs, msg);
	}
	if (ipath_debug & __IPATH_VERBDBG) {
		unsigned long tl, hd, status, lengen;
		tl = FUNC5(dd, dd->ipath_kregs->kr_senddmatail);
		hd = FUNC5(dd, dd->ipath_kregs->kr_senddmahead);
		status = FUNC5(dd
			, dd->ipath_kregs->kr_senddmastatus);
		lengen = FUNC5(dd,
			dd->ipath_kregs->kr_senddmalengen);
		FUNC2(VERBOSE, "sdma tl 0x%lx hd 0x%lx status 0x%lx "
			"lengen 0x%lx\n", tl, hd, status, lengen);
	}

	FUNC6(&dd->ipath_sdma_lock, flags);
	FUNC0(IPATH_SDMA_DISABLED, &dd->ipath_sdma_status);
	expected = FUNC8(IPATH_SDMA_ABORTING, &dd->ipath_sdma_status);
	FUNC7(&dd->ipath_sdma_lock, flags);
	if (!expected)
		FUNC1(dd, 1);
}