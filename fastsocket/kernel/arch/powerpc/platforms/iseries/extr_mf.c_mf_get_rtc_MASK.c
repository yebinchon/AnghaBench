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
struct TYPE_2__ {int /*<<< orphan*/  ce_msg; } ;
struct rtc_time_data {TYPE_1__ ce_msg; int /*<<< orphan*/  rc; int /*<<< orphan*/  com; struct rtc_time_data* token; int /*<<< orphan*/ * handler; } ;
struct rtc_time {int dummy; } ;
struct ce_msg_comp_data {TYPE_1__ ce_msg; int /*<<< orphan*/  rc; int /*<<< orphan*/  com; struct ce_msg_comp_data* token; int /*<<< orphan*/ * handler; } ;
typedef  int /*<<< orphan*/  rtc_data ;
typedef  int /*<<< orphan*/  ce_complete ;

/* Variables and functions */
 int /*<<< orphan*/  get_rtc_time_complete ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rtc_time_data*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rtc_time*) ; 
 int FUNC3 (int,struct rtc_time_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct rtc_time *tm)
{
	struct ce_msg_comp_data ce_complete;
	struct rtc_time_data rtc_data;
	int rc;

	FUNC1(&ce_complete, 0, sizeof(ce_complete));
	FUNC1(&rtc_data, 0, sizeof(rtc_data));
	FUNC0(&rtc_data.com);
	ce_complete.handler = &get_rtc_time_complete;
	ce_complete.token = &rtc_data;
	rc = FUNC3(0x40, &ce_complete);
	if (rc)
		return rc;
	FUNC4(&rtc_data.com);
	return FUNC2(rtc_data.rc, rtc_data.ce_msg.ce_msg, tm);
}