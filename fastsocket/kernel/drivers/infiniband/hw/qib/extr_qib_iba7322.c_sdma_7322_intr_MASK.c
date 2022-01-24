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
struct qib_pportdata {int dummy; } ;
struct qib_devdata {struct qib_pportdata* pport; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SDma ; 
 int /*<<< orphan*/  SDmaCleanupDone ; 
 int /*<<< orphan*/  SDmaIdle ; 
 int /*<<< orphan*/  SDmaProgress ; 
 int /*<<< orphan*/  qib_sdma_event_e20_hw_started ; 
 int /*<<< orphan*/  FUNC2 (struct qib_pportdata*) ; 
 int /*<<< orphan*/  FUNC3 (struct qib_pportdata*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct qib_devdata *dd, u64 istat)
{
	struct qib_pportdata *ppd0 = &dd->pport[0];
	struct qib_pportdata *ppd1 = &dd->pport[1];
	u64 intr0 = istat & (FUNC0(SDma, 0) |
		FUNC0(SDmaIdle, 0) | FUNC0(SDmaProgress, 0));
	u64 intr1 = istat & (FUNC0(SDma, 1) |
		FUNC0(SDmaIdle, 1) | FUNC0(SDmaProgress, 1));

	if (intr0)
		FUNC2(ppd0);
	if (intr1)
		FUNC2(ppd1);

	if (istat & FUNC1(SDmaCleanupDone, 0))
		FUNC3(ppd0, qib_sdma_event_e20_hw_started);
	if (istat & FUNC1(SDmaCleanupDone, 1))
		FUNC3(ppd1, qib_sdma_event_e20_hw_started);
}