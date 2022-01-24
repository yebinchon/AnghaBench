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
struct g760a_data {int fan_sta; int /*<<< orphan*/  update_lock; int /*<<< orphan*/  fan_div; int /*<<< orphan*/  clk; int /*<<< orphan*/  act_cnt; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int G760A_REG_FAN_STA_RPM_LOW ; 
 struct g760a_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,unsigned int) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev, struct device_attribute *da,
			char *buf)
{
	struct g760a_data *data = FUNC0(dev);
	unsigned int rpm = 0;

	FUNC1(&data->update_lock);
	if (!(data->fan_sta & G760A_REG_FAN_STA_RPM_LOW))
		rpm = FUNC3(data->act_cnt, data->clk, data->fan_div);
	FUNC2(&data->update_lock);

	return FUNC4(buf, "%d\n", rpm);
}