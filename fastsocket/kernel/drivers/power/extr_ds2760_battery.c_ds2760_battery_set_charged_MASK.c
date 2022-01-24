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
struct power_supply {int dummy; } ;
struct ds2760_device_info {int /*<<< orphan*/  set_charged_work; int /*<<< orphan*/  monitor_wqueue; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 struct ds2760_device_info* FUNC2 (struct power_supply*) ; 

__attribute__((used)) static void FUNC3(struct power_supply *psy)
{
	struct ds2760_device_info *di = FUNC2(psy);

	/* postpone the actual work by 20 secs. This is for debouncing GPIO
	 * signals and to let the current value settle. See AN4188. */
	FUNC0(&di->set_charged_work);
	FUNC1(di->monitor_wqueue, &di->set_charged_work, HZ * 20);
}