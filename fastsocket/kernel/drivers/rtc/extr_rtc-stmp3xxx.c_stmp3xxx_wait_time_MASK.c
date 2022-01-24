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
struct stmp3xxx_rtc_data {scalar_t__ io; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ HW_RTC_STAT ; 
 int /*<<< orphan*/  RTC_STAT_STALE_REGS ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void FUNC3(struct stmp3xxx_rtc_data *rtc_data)
{
	/*
	 * The datasheet doesn't say which way round the
	 * NEW_REGS/STALE_REGS bitfields go. In fact it's 0x1=P0,
	 * 0x2=P1, .., 0x20=P5, 0x40=ALARM, 0x80=SECONDS
	 */
	while (FUNC1(rtc_data->io + HW_RTC_STAT) &
			FUNC0(0x80, RTC_STAT_STALE_REGS))
		FUNC2();
}