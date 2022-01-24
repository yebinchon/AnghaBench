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
struct i2c_client {int dummy; } ;
struct ds1307 {int /*<<< orphan*/  flags; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int DS1337_BIT_A1IE ; 
 int /*<<< orphan*/  DS1337_REG_CONTROL ; 
 int ENOIOCTLCMD ; 
 int ENOTTY ; 
 int /*<<< orphan*/  HAS_ALARM ; 
#define  RTC_AIE_OFF 129 
#define  RTC_AIE_ON 128 
 struct ds1307* FUNC0 (struct i2c_client*) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct i2c_client* FUNC4 (struct device*) ; 

__attribute__((used)) static int FUNC5(struct device *dev, unsigned int cmd, unsigned long arg)
{
	struct i2c_client	*client = FUNC4(dev);
	struct ds1307		*ds1307 = FUNC0(client);
	int			ret;

	switch (cmd) {
	case RTC_AIE_OFF:
		if (!FUNC3(HAS_ALARM, &ds1307->flags))
			return -ENOTTY;

		ret = FUNC1(client, DS1337_REG_CONTROL);
		if (ret < 0)
			return ret;

		ret &= ~DS1337_BIT_A1IE;

		ret = FUNC2(client,
						DS1337_REG_CONTROL, ret);
		if (ret < 0)
			return ret;

		break;

	case RTC_AIE_ON:
		if (!FUNC3(HAS_ALARM, &ds1307->flags))
			return -ENOTTY;

		ret = FUNC1(client, DS1337_REG_CONTROL);
		if (ret < 0)
			return ret;

		ret |= DS1337_BIT_A1IE;

		ret = FUNC2(client,
						DS1337_REG_CONTROL, ret);
		if (ret < 0)
			return ret;

		break;

	default:
		return -ENOIOCTLCMD;
	}

	return 0;
}