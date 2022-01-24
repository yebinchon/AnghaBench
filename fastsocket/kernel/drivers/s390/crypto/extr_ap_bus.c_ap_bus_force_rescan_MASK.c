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
 int HZ ; 
 int ap_config_time ; 
 int /*<<< orphan*/  ap_config_timer ; 
 int /*<<< orphan*/  ap_config_work ; 
 int /*<<< orphan*/  ap_work_queue ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC3(void)
{
	/* reconfigure the AP bus rescan timer. */
	FUNC1(&ap_config_timer, jiffies + ap_config_time * HZ);
	/* processing a asynchronous bus rescan */
	FUNC2(ap_work_queue, &ap_config_work);
	FUNC0(&ap_config_work);
}