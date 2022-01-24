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
typedef  int /*<<< orphan*/  u32 ;
struct lm93_data {int /*<<< orphan*/  update_lock; int /*<<< orphan*/ ** block9; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 size_t LM93_PWM_CTL1 ; 
 int /*<<< orphan*/  FUNC0 (int,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct lm93_data* FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ *,int) ; 
 struct i2c_client* FUNC7 (struct device*) ; 
 TYPE_1__* FUNC8 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev,
					struct device_attribute *attr,
					const char *buf, size_t count)
{
	int nr = (FUNC8(attr))->index;
	struct i2c_client *client = FUNC7(dev);
	struct lm93_data *data = FUNC2(client);
	u32 val = FUNC6(buf, NULL, 10);

	FUNC4(&data->update_lock);
	data->block9[nr][LM93_PWM_CTL1] = FUNC1(val, 0, 255);
	FUNC3(client,	FUNC0(nr,LM93_PWM_CTL1),
				data->block9[nr][LM93_PWM_CTL1]);
	FUNC5(&data->update_lock);
	return count;
}