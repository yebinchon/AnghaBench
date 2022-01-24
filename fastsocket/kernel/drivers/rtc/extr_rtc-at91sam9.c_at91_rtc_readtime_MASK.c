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
typedef  scalar_t__ u32 ;
struct sam9_rtc {int dummy; } ;
struct rtc_time {int /*<<< orphan*/  tm_sec; int /*<<< orphan*/  tm_min; int /*<<< orphan*/  tm_hour; int /*<<< orphan*/  tm_mday; int /*<<< orphan*/  tm_mon; scalar_t__ tm_year; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EILSEQ ; 
 int /*<<< orphan*/  VR ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sam9_rtc* FUNC1 (struct device*) ; 
 scalar_t__ FUNC2 (struct sam9_rtc*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,struct rtc_time*) ; 
 scalar_t__ FUNC4 (struct sam9_rtc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct device *dev, struct rtc_time *tm)
{
	struct sam9_rtc *rtc = FUNC1(dev);
	u32 secs, secs2;
	u32 offset;

	/* read current time offset */
	offset = FUNC2(rtc);
	if (offset == 0)
		return -EILSEQ;

	/* reread the counter to help sync the two clock domains */
	secs = FUNC4(rtc, VR);
	secs2 = FUNC4(rtc, VR);
	if (secs != secs2)
		secs = FUNC4(rtc, VR);

	FUNC3(offset + secs, tm);

	FUNC0(dev, "%s: %4d-%02d-%02d %02d:%02d:%02d\n", "readtime",
		1900 + tm->tm_year, tm->tm_mon, tm->tm_mday,
		tm->tm_hour, tm->tm_min, tm->tm_sec);

	return 0;
}