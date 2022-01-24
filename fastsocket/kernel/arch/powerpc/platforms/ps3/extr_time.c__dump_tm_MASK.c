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
struct rtc_time {int /*<<< orphan*/  tm_wday; int /*<<< orphan*/  tm_year; int /*<<< orphan*/  tm_mon; int /*<<< orphan*/  tm_mday; int /*<<< orphan*/  tm_hour; int /*<<< orphan*/  tm_min; int /*<<< orphan*/  tm_sec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(const struct rtc_time *tm, const char* func, int line)
{
	FUNC0("%s:%d tm_sec  %d\n", func, line, tm->tm_sec);
	FUNC0("%s:%d tm_min  %d\n", func, line, tm->tm_min);
	FUNC0("%s:%d tm_hour %d\n", func, line, tm->tm_hour);
	FUNC0("%s:%d tm_mday %d\n", func, line, tm->tm_mday);
	FUNC0("%s:%d tm_mon  %d\n", func, line, tm->tm_mon);
	FUNC0("%s:%d tm_year %d\n", func, line, tm->tm_year);
	FUNC0("%s:%d tm_wday %d\n", func, line, tm->tm_wday);
}