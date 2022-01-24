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
struct rtc_wkalrm {int enabled; int pending; int /*<<< orphan*/  time; } ;
struct i2c_client {scalar_t__ irq; } ;
struct ds1374 {int /*<<< orphan*/  mutex; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DS1374_REG_CR ; 
 int DS1374_REG_CR_WACE ; 
 int /*<<< orphan*/  DS1374_REG_SR ; 
 int DS1374_REG_SR_AF ; 
 int /*<<< orphan*/  DS1374_REG_TOD0 ; 
 int /*<<< orphan*/  DS1374_REG_WDALM0 ; 
 int EINVAL ; 
 int FUNC0 (struct i2c_client*,scalar_t__*,int /*<<< orphan*/ ,int) ; 
 struct ds1374* FUNC1 (struct i2c_client*) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ *) ; 
 struct i2c_client* FUNC6 (struct device*) ; 

__attribute__((used)) static int FUNC7(struct device *dev, struct rtc_wkalrm *alarm)
{
	struct i2c_client *client = FUNC6(dev);
	struct ds1374 *ds1374 = FUNC1(client);
	u32 now, cur_alarm;
	int cr, sr;
	int ret = 0;

	if (client->irq <= 0)
		return -EINVAL;

	FUNC3(&ds1374->mutex);

	cr = ret = FUNC2(client, DS1374_REG_CR);
	if (ret < 0)
		goto out;

	sr = ret = FUNC2(client, DS1374_REG_SR);
	if (ret < 0)
		goto out;

	ret = FUNC0(client, &now, DS1374_REG_TOD0, 4);
	if (ret)
		goto out;

	ret = FUNC0(client, &cur_alarm, DS1374_REG_WDALM0, 3);
	if (ret)
		goto out;

	FUNC5(now + cur_alarm, &alarm->time);
	alarm->enabled = !!(cr & DS1374_REG_CR_WACE);
	alarm->pending = !!(sr & DS1374_REG_SR_AF);

out:
	FUNC4(&ds1374->mutex);
	return ret;
}