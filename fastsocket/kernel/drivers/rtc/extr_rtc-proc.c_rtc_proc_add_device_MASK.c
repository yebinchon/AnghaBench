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
struct rtc_device {scalar_t__ id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct rtc_device*) ; 
 int /*<<< orphan*/  rtc_proc_fops ; 

void FUNC1(struct rtc_device *rtc)
{
	if (rtc->id == 0)
		FUNC0("driver/rtc", 0, NULL, &rtc_proc_fops, rtc);
}