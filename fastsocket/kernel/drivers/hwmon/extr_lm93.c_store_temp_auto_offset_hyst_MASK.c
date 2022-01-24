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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct lm93_data {int sfc2; int* auto_pwm_min_hyst; int /*<<< orphan*/  update_lock; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  LM93_REG_SFC2 ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct lm93_data* FUNC2 (struct i2c_client*) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const*,int /*<<< orphan*/ *,int) ; 
 struct i2c_client* FUNC8 (struct device*) ; 
 TYPE_1__* FUNC9 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC10(struct device *dev,
						struct device_attribute *attr,
						const char *buf, size_t count)
{
	int nr = (FUNC9(attr))->index;
	struct i2c_client *client = FUNC8(dev);
	struct lm93_data *data = FUNC2(client);
	u32 val = FUNC7(buf, NULL, 10);
	u8 reg;

	FUNC5(&data->update_lock);
	/* force 0.5C/bit mode */
	data->sfc2 = FUNC3(client, LM93_REG_SFC2);
	data->sfc2 |= ((nr < 2) ? 0x10 : 0x20);
	FUNC4(client, LM93_REG_SFC2, data->sfc2);
	reg = data->auto_pwm_min_hyst[nr/2];
	reg = (reg & 0xf0) | (FUNC1(val, 1) & 0x0f);
	data->auto_pwm_min_hyst[nr/2] = reg;
	FUNC4(client, FUNC0(nr), reg);
	FUNC6(&data->update_lock);
	return count;
}