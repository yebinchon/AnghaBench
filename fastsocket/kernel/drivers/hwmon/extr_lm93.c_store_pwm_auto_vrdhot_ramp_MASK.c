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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct lm93_data {int /*<<< orphan*/  update_lock; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LM93_REG_PWM_RAMP_CTL ; 
 struct lm93_data* FUNC1 (struct i2c_client*) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ *,int) ; 
 struct i2c_client* FUNC7 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
						struct device_attribute *attr,
						const char *buf, size_t count)
{
	struct i2c_client *client = FUNC7(dev);
	struct lm93_data *data = FUNC1(client);
	u32 val = FUNC6(buf, NULL, 10);
	u8 ramp;

	FUNC4(&data->update_lock);
	ramp = FUNC2(client, LM93_REG_PWM_RAMP_CTL);
	ramp = (ramp & 0xf0) | (FUNC0(val) & 0x0f);
	FUNC3(client, LM93_REG_PWM_RAMP_CTL, ramp);
	FUNC5(&data->update_lock);
	return 0;
}