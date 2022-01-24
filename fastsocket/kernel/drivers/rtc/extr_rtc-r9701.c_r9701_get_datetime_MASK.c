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
struct rtc_time {void* tm_year; void* tm_mon; void* tm_mday; void* tm_hour; void* tm_min; void* tm_sec; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 unsigned char RDAYCNT ; 
 unsigned char RHRCNT ; 
 unsigned char RMINCNT ; 
 unsigned char RMONCNT ; 
 unsigned char RSECCNT ; 
 unsigned char RYRCNT ; 
 void* FUNC1 (unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (struct rtc_time*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct device*,unsigned char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct rtc_time*) ; 

__attribute__((used)) static int FUNC5(struct device *dev, struct rtc_time *dt)
{
	int ret;
	unsigned char buf[] = { RSECCNT, RMINCNT, RHRCNT,
				RDAYCNT, RMONCNT, RYRCNT };

	ret = FUNC3(dev, buf, FUNC0(buf));
	if (ret)
		return ret;

	FUNC2(dt, 0, sizeof(*dt));

	dt->tm_sec = FUNC1(buf[0]); /* RSECCNT */
	dt->tm_min = FUNC1(buf[1]); /* RMINCNT */
	dt->tm_hour = FUNC1(buf[2]); /* RHRCNT */

	dt->tm_mday = FUNC1(buf[3]); /* RDAYCNT */
	dt->tm_mon = FUNC1(buf[4]) - 1; /* RMONCNT */
	dt->tm_year = FUNC1(buf[5]) + 100; /* RYRCNT */

	/* the rtc device may contain illegal values on power up
	 * according to the data sheet. make sure they are valid.
	 */

	return FUNC4(dt);
}