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
struct rtc_device {int dummy; } ;
struct m41t80_data {int features; struct rtc_device* rtc; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int M41T80_FEATURE_HT ; 
 struct m41t80_data* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (struct m41t80_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct rtc_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wdt_dev ; 
 int /*<<< orphan*/  wdt_notifier ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client)
{
	struct m41t80_data *clientdata = FUNC0(client);
	struct rtc_device *rtc = clientdata->rtc;

#ifdef CONFIG_RTC_DRV_M41T80_WDT
	if (clientdata->features & M41T80_FEATURE_HT) {
		misc_deregister(&wdt_dev);
		unregister_reboot_notifier(&wdt_notifier);
	}
#endif
	if (rtc)
		FUNC3(rtc);
	FUNC1(clientdata);

	return 0;
}