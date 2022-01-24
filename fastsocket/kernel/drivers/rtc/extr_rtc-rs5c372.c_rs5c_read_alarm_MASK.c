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
struct TYPE_2__ {int tm_mday; int tm_mon; int tm_year; int tm_wday; int tm_yday; int tm_isdst; int /*<<< orphan*/  tm_hour; int /*<<< orphan*/  tm_min; scalar_t__ tm_sec; } ;
struct rtc_wkalrm {int enabled; int pending; TYPE_1__ time; } ;
struct rs5c372 {int* regs; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int RS5C_CTRL1_AALE ; 
 int RS5C_CTRL2_AAFG ; 
 size_t RS5C_REG_ALARM_A_HOURS ; 
 size_t RS5C_REG_ALARM_A_MIN ; 
 size_t RS5C_REG_CTRL1 ; 
 size_t RS5C_REG_CTRL2 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct rs5c372* FUNC1 (struct i2c_client*) ; 
 int FUNC2 (struct rs5c372*) ; 
 int /*<<< orphan*/  FUNC3 (struct rs5c372*,int) ; 
 struct i2c_client* FUNC4 (struct device*) ; 

__attribute__((used)) static int FUNC5(struct device *dev, struct rtc_wkalrm *t)
{
	struct i2c_client	*client = FUNC4(dev);
	struct rs5c372		*rs5c = FUNC1(client);
	int			status;

	status = FUNC2(rs5c);
	if (status < 0)
		return status;

	/* report alarm time */
	t->time.tm_sec = 0;
	t->time.tm_min = FUNC0(rs5c->regs[RS5C_REG_ALARM_A_MIN] & 0x7f);
	t->time.tm_hour = FUNC3(rs5c, rs5c->regs[RS5C_REG_ALARM_A_HOURS]);
	t->time.tm_mday = -1;
	t->time.tm_mon = -1;
	t->time.tm_year = -1;
	t->time.tm_wday = -1;
	t->time.tm_yday = -1;
	t->time.tm_isdst = -1;

	/* ... and status */
	t->enabled = !!(rs5c->regs[RS5C_REG_CTRL1] & RS5C_CTRL1_AALE);
	t->pending = !!(rs5c->regs[RS5C_REG_CTRL2] & RS5C_CTRL2_AAFG);

	return 0;
}