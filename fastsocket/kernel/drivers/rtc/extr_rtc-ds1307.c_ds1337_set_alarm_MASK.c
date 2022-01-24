#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned char u8 ;
struct TYPE_2__ {int /*<<< orphan*/  tm_mday; int /*<<< orphan*/  tm_hour; int /*<<< orphan*/  tm_min; int /*<<< orphan*/  tm_sec; } ;
struct rtc_wkalrm {scalar_t__ enabled; TYPE_1__ time; int /*<<< orphan*/  pending; } ;
struct i2c_client {int dummy; } ;
struct ds1307 {unsigned char* regs; int (* read_block_data ) (struct i2c_client*,int /*<<< orphan*/ ,int,unsigned char*) ;int (* write_block_data ) (struct i2c_client*,int /*<<< orphan*/ ,int,unsigned char*) ;int /*<<< orphan*/  flags; } ;
struct device {int dummy; } ;

/* Variables and functions */
 unsigned char DS1337_BIT_A1I ; 
 unsigned char DS1337_BIT_A1IE ; 
 unsigned char DS1337_BIT_A2I ; 
 unsigned char DS1337_BIT_A2IE ; 
 int /*<<< orphan*/  DS1339_REG_ALARM1_SECS ; 
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  HAS_ALARM ; 
 unsigned char FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 struct ds1307* FUNC3 (struct i2c_client*) ; 
 int FUNC4 (struct i2c_client*,int /*<<< orphan*/ ,int,unsigned char*) ; 
 int FUNC5 (struct i2c_client*,int /*<<< orphan*/ ,int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct i2c_client* FUNC7 (struct device*) ; 

__attribute__((used)) static int FUNC8(struct device *dev, struct rtc_wkalrm *t)
{
	struct i2c_client       *client = FUNC7(dev);
	struct ds1307		*ds1307 = FUNC3(client);
	unsigned char		*buf = ds1307->regs;
	u8			control, status;
	int			ret;

	if (!FUNC6(HAS_ALARM, &ds1307->flags))
		return -EINVAL;

	FUNC1(dev, "%s secs=%d, mins=%d, "
		"hours=%d, mday=%d, enabled=%d, pending=%d\n",
		"alarm set", t->time.tm_sec, t->time.tm_min,
		t->time.tm_hour, t->time.tm_mday,
		t->enabled, t->pending);

	/* read current status of both alarms and the chip */
	ret = ds1307->read_block_data(client,
			DS1339_REG_ALARM1_SECS, 9, buf);
	if (ret != 9) {
		FUNC2(dev, "%s error %d\n", "alarm write", ret);
		return -EIO;
	}
	control = ds1307->regs[7];
	status = ds1307->regs[8];

	FUNC1(dev, "%s: %02x %02x %02x %02x, %02x %02x %02x, %02x %02x\n",
			"alarm set (old status)",
			ds1307->regs[0], ds1307->regs[1],
			ds1307->regs[2], ds1307->regs[3],
			ds1307->regs[4], ds1307->regs[5],
			ds1307->regs[6], control, status);

	/* set ALARM1, using 24 hour and day-of-month modes */
	buf[0] = FUNC0(t->time.tm_sec);
	buf[1] = FUNC0(t->time.tm_min);
	buf[2] = FUNC0(t->time.tm_hour);
	buf[3] = FUNC0(t->time.tm_mday);

	/* set ALARM2 to non-garbage */
	buf[4] = 0;
	buf[5] = 0;
	buf[6] = 0;

	/* optionally enable ALARM1 */
	buf[7] = control & ~(DS1337_BIT_A1IE | DS1337_BIT_A2IE);
	if (t->enabled) {
		FUNC1(dev, "alarm IRQ armed\n");
		buf[7] |= DS1337_BIT_A1IE;	/* only ALARM1 is used */
	}
	buf[8] = status & ~(DS1337_BIT_A1I | DS1337_BIT_A2I);

	ret = ds1307->write_block_data(client,
			DS1339_REG_ALARM1_SECS, 9, buf);
	if (ret < 0) {
		FUNC2(dev, "can't set alarm time\n");
		return ret;
	}

	return 0;
}