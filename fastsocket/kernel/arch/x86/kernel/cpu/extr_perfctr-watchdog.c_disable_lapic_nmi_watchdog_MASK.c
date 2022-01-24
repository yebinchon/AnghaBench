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
struct TYPE_2__ {int /*<<< orphan*/  (* unreserve ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ NMI_LOCAL_APIC ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nmi_active ; 
 scalar_t__ nmi_watchdog ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  stop_apic_nmi_watchdog ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_1__* wd_ops ; 

void FUNC4(void)
{
	FUNC0(nmi_watchdog != NMI_LOCAL_APIC);

	if (FUNC1(&nmi_active) <= 0)
		return;

	FUNC2(stop_apic_nmi_watchdog, NULL, 1);

	if (wd_ops)
		wd_ops->unreserve();

	FUNC0(FUNC1(&nmi_active) != 0);
}