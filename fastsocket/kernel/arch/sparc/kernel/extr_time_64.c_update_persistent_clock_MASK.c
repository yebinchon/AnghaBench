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
struct timespec {int /*<<< orphan*/  tv_sec; } ;
struct rtc_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rtc_device*) ; 
 struct rtc_device* FUNC1 (char*) ; 
 int FUNC2 (struct rtc_device*,int /*<<< orphan*/ ) ; 

int FUNC3(struct timespec now)
{
	struct rtc_device *rtc = FUNC1("rtc0");
	int err = -1;

	if (rtc) {
		err = FUNC2(rtc, now.tv_sec);
		FUNC0(rtc);
	}

	return err;
}