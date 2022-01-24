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
typedef  int u64 ;
struct ipath_devdata {int /*<<< orphan*/  ipath_sdma_abort_task; int /*<<< orphan*/  ipath_sdma_status; int /*<<< orphan*/  ipath_sdma_lock; } ;

/* Variables and functions */
 int INFINIPATH_I_SDMADISABLED ; 
 int INFINIPATH_I_SDMAINT ; 
 int /*<<< orphan*/  IPATH_SDMA_ABORTING ; 
 int /*<<< orphan*/  IPATH_SDMA_DISABLED ; 
 int /*<<< orphan*/  IPATH_SDMA_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ipath_devdata*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct ipath_devdata*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct ipath_devdata *dd, u64 istat)
{
	unsigned long flags;
	int expected;

	if ((istat & INFINIPATH_I_SDMAINT) &&
	    !FUNC7(IPATH_SDMA_SHUTDOWN, &dd->ipath_sdma_status))
		FUNC3(dd);

	if (istat & INFINIPATH_I_SDMADISABLED) {
		expected = FUNC7(IPATH_SDMA_ABORTING,
			&dd->ipath_sdma_status);
		FUNC2("%s SDmaDisabled intr\n",
			expected ? "expected" : "unexpected");
		FUNC4(&dd->ipath_sdma_lock, flags);
		FUNC0(IPATH_SDMA_DISABLED, &dd->ipath_sdma_status);
		FUNC5(&dd->ipath_sdma_lock, flags);
		if (!expected)
			FUNC1(dd, 1);
		if (!FUNC7(IPATH_SDMA_SHUTDOWN, &dd->ipath_sdma_status))
			FUNC6(&dd->ipath_sdma_abort_task);
	}
}