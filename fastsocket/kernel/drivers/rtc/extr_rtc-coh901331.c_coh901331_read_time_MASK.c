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
struct coh901331_port {int /*<<< orphan*/  clk; scalar_t__ virtbase; } ;

/* Variables and functions */
 scalar_t__ COH901331_CUR_TIME ; 
 scalar_t__ COH901331_VALID ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct coh901331_port* FUNC2 (struct device*) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,struct rtc_time*) ; 
 int FUNC5 (struct rtc_time*) ; 

__attribute__((used)) static int FUNC6(struct device *dev, struct rtc_time *tm)
{
	struct coh901331_port *rtap = FUNC2(dev);

	FUNC1(rtap->clk);
	/* Check if the time is valid */
	if (FUNC3(rtap->virtbase + COH901331_VALID)) {
		FUNC4(FUNC3(rtap->virtbase + COH901331_CUR_TIME), tm);
		FUNC0(rtap->clk);
		return FUNC5(tm);
	}
	FUNC0(rtap->clk);
	return -EINVAL;
}