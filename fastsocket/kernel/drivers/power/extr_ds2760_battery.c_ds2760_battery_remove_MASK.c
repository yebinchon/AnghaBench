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
struct platform_device {int dummy; } ;
struct ds2760_device_info {int /*<<< orphan*/  bat; int /*<<< orphan*/  monitor_wqueue; int /*<<< orphan*/  set_charged_work; int /*<<< orphan*/  monitor_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct ds2760_device_info* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct ds2760_device_info *di = FUNC2(pdev);

	FUNC0(di->monitor_wqueue,
					  &di->monitor_work);
	FUNC0(di->monitor_wqueue,
					  &di->set_charged_work);
	FUNC1(di->monitor_wqueue);
	FUNC3(&di->bat);

	return 0;
}