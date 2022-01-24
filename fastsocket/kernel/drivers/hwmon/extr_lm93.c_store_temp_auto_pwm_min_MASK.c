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
struct lm93_data {int* auto_pwm_min_hyst; int /*<<< orphan*/  update_lock; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int /*<<< orphan*/  LM93_PWM_CTL4 ; 
 int /*<<< orphan*/  LM93_PWM_MAP_HI_FREQ ; 
 int /*<<< orphan*/  LM93_PWM_MAP_LO_FREQ ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct lm93_data* FUNC3 (struct i2c_client*) ; 
 int FUNC4 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char const*,int /*<<< orphan*/ *,int) ; 
 struct i2c_client* FUNC9 (struct device*) ; 
 TYPE_1__* FUNC10 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC11(struct device *dev,
					struct device_attribute *attr,
					const char *buf, size_t count)
{
	int nr = (FUNC10(attr))->index;
	struct i2c_client *client = FUNC9(dev);
	struct lm93_data *data = FUNC3(client);
	u32 val = FUNC8(buf, NULL, 10);
	u8 reg, ctl4;

	FUNC6(&data->update_lock);
	reg = FUNC4(client, FUNC2(nr));
	ctl4 = FUNC4(client, FUNC1(nr,LM93_PWM_CTL4));
	reg = (reg & 0x0f) |
		FUNC0(val, (ctl4 & 0x07) ?
				LM93_PWM_MAP_LO_FREQ :
				LM93_PWM_MAP_HI_FREQ) << 4;
	data->auto_pwm_min_hyst[nr/2] = reg;
	FUNC5(client, FUNC2(nr), reg);
	FUNC7(&data->update_lock);
	return count;
}