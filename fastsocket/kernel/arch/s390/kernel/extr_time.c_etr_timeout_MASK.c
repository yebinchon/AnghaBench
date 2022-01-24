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

/* Variables and functions */
 int /*<<< orphan*/  ETR_EVENT_UPDATE ; 
 int /*<<< orphan*/  etr_events ; 
 int /*<<< orphan*/  etr_work ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  time_sync_wq ; 

__attribute__((used)) static void FUNC2(unsigned long dummy)
{
	FUNC1(ETR_EVENT_UPDATE, &etr_events);
	FUNC0(time_sync_wq, &etr_work);
}