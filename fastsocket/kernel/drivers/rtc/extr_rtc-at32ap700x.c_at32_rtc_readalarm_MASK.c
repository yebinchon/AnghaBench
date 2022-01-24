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
struct rtc_wkalrm {int enabled; int pending; int /*<<< orphan*/  time; } ;
struct rtc_at32ap700x {int /*<<< orphan*/  lock; int /*<<< orphan*/  alarm_time; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IMR ; 
 int /*<<< orphan*/  IMR_TOPI ; 
 int /*<<< orphan*/  ISR ; 
 int /*<<< orphan*/  ISR_TOPI ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct rtc_at32ap700x* FUNC1 (struct device*) ; 
 int FUNC2 (struct rtc_at32ap700x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct device *dev, struct rtc_wkalrm *alrm)
{
	struct rtc_at32ap700x *rtc = FUNC1(dev);

	FUNC4(&rtc->lock);
	FUNC3(rtc->alarm_time, &alrm->time);
	alrm->enabled = FUNC2(rtc, IMR) & FUNC0(IMR_TOPI) ? 1 : 0;
	alrm->pending = FUNC2(rtc, ISR) & FUNC0(ISR_TOPI) ? 1 : 0;
	FUNC5(&rtc->lock);

	return 0;
}