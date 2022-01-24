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
struct rtc_wkalrm {scalar_t__ enabled; struct rtc_time time; } ;
struct i2c_client {scalar_t__ irq; } ;
struct ds1374 {int /*<<< orphan*/  mutex; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DS1374_REG_CR ; 
 int DS1374_REG_CR_AIE ; 
 int DS1374_REG_CR_WACE ; 
 int DS1374_REG_CR_WDALM ; 
 int /*<<< orphan*/  DS1374_REG_WDALM0 ; 
 int EINVAL ; 
 int FUNC0 (struct device*,struct rtc_time*) ; 
 int FUNC1 (struct i2c_client*,unsigned long,int /*<<< orphan*/ ,int) ; 
 struct ds1374* FUNC2 (struct i2c_client*) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct rtc_time*,unsigned long*) ; 
 scalar_t__ FUNC8 (unsigned long,unsigned long) ; 
 struct i2c_client* FUNC9 (struct device*) ; 

__attribute__((used)) static int FUNC10(struct device *dev, struct rtc_wkalrm *alarm)
{
	struct i2c_client *client = FUNC9(dev);
	struct ds1374 *ds1374 = FUNC2(client);
	struct rtc_time now;
	unsigned long new_alarm, itime;
	int cr;
	int ret = 0;

	if (client->irq <= 0)
		return -EINVAL;

	ret = FUNC0(dev, &now);
	if (ret < 0)
		return ret;

	FUNC7(&alarm->time, &new_alarm);
	FUNC7(&now, &itime);

	/* This can happen due to races, in addition to dates that are
	 * truly in the past.  To avoid requiring the caller to check for
	 * races, dates in the past are assumed to be in the recent past
	 * (i.e. not something that we'd rather the caller know about via
	 * an error), and the alarm is set to go off as soon as possible.
	 */
	if (FUNC8(new_alarm, itime))
		new_alarm = 1;
	else
		new_alarm -= itime;

	FUNC5(&ds1374->mutex);

	ret = cr = FUNC3(client, DS1374_REG_CR);
	if (ret < 0)
		goto out;

	/* Disable any existing alarm before setting the new one
	 * (or lack thereof). */
	cr &= ~DS1374_REG_CR_WACE;

	ret = FUNC4(client, DS1374_REG_CR, cr);
	if (ret < 0)
		goto out;

	ret = FUNC1(client, new_alarm, DS1374_REG_WDALM0, 3);
	if (ret)
		goto out;

	if (alarm->enabled) {
		cr |= DS1374_REG_CR_WACE | DS1374_REG_CR_AIE;
		cr &= ~DS1374_REG_CR_WDALM;

		ret = FUNC4(client, DS1374_REG_CR, cr);
	}

out:
	FUNC6(&ds1374->mutex);
	return ret;
}