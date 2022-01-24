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
struct gru_mm_struct {int /*<<< orphan*/  ms_notifier; int /*<<< orphan*/  ms_released; int /*<<< orphan*/  ms_refcnt; } ;
struct TYPE_2__ {int /*<<< orphan*/  mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  gms_free ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,struct gru_mm_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  grudev ; 
 int /*<<< orphan*/  FUNC4 (struct gru_mm_struct*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC6(struct gru_mm_struct *gms)
{
	FUNC3(grudev, "gms %p, refcnt %d, released %d\n", gms,
		FUNC2(&gms->ms_refcnt), gms->ms_released);
	if (FUNC1(&gms->ms_refcnt) == 0) {
		if (!gms->ms_released)
			FUNC5(&gms->ms_notifier, current->mm);
		FUNC4(gms);
		FUNC0(gms_free);
	}
}