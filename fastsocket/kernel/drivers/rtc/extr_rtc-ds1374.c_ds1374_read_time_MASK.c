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
typedef  int /*<<< orphan*/  u32 ;
struct rtc_time {int dummy; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DS1374_REG_TOD0 ; 
 int FUNC0 (struct i2c_client*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct rtc_time*) ; 
 struct i2c_client* FUNC2 (struct device*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, struct rtc_time *time)
{
	struct i2c_client *client = FUNC2(dev);
	u32 itime;
	int ret;

	ret = FUNC0(client, &itime, DS1374_REG_TOD0, 4);
	if (!ret)
		FUNC1(itime, time);

	return ret;
}