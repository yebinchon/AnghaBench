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
struct TYPE_2__ {scalar_t__ current_state; } ;
struct qib_pportdata {int /*<<< orphan*/  sdma_lock; TYPE_1__ sdma_state; } ;
typedef  enum qib_sdma_events { ____Placeholder_qib_sdma_events } qib_sdma_events ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qib_pportdata*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct qib_pportdata*) ; 
 scalar_t__ qib_sdma_state_s99_running ; 
 int /*<<< orphan*/  FUNC2 (struct qib_pportdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC5(struct qib_pportdata *ppd,
	enum qib_sdma_events event)
{
	unsigned long flags;

	FUNC3(&ppd->sdma_lock, flags);

	FUNC0(ppd, event);

	if (ppd->sdma_state.current_state == qib_sdma_state_s99_running)
		FUNC2(ppd, FUNC1(ppd));

	FUNC4(&ppd->sdma_lock, flags);
}