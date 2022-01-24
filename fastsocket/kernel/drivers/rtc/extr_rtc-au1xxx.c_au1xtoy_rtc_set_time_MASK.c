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
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int SYS_CNTRL_C0S ; 
 int /*<<< orphan*/  SYS_COUNTER_CNTRL ; 
 int /*<<< orphan*/  SYS_TOYWRITE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct rtc_time*,unsigned long*) ; 

__attribute__((used)) static int FUNC5(struct device *dev, struct rtc_time *tm)
{
	unsigned long t;

	FUNC4(tm, &t);

	FUNC2(t, SYS_TOYWRITE);
	FUNC1();

	/* wait for the pending register write to succeed.  This can
	 * take up to 6 seconds...
	 */
	while (FUNC0(SYS_COUNTER_CNTRL) & SYS_CNTRL_C0S)
		FUNC3(1);

	return 0;
}