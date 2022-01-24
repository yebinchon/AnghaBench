#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ es; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETR_EVENT_SYNC_CHECK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__ etr_eacr ; 
 int /*<<< orphan*/  etr_events ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  etr_work ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  time_sync_wq ; 

void FUNC4(void)
{
	if (!etr_eacr.es)
		return;
	FUNC0(NULL);
	if (!FUNC3(ETR_EVENT_SYNC_CHECK, &etr_events)) {
		etr_eacr.es = 0;
		FUNC1(&etr_eacr);
		FUNC2(time_sync_wq, &etr_work);
	}
}