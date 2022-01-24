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
typedef  int u32 ;
struct lm93_data {int /*<<< orphan*/  update_lock; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  LM93_PWM_CTL2 ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 struct lm93_data* FUNC1 (struct i2c_client*) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (char const*,int /*<<< orphan*/ *,int) ; 
 struct i2c_client* FUNC7 (struct device*) ; 
 TYPE_1__* FUNC8 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev,
				struct device_attribute *attr,
				const char *buf, size_t count)
{
	int nr = (FUNC8(attr))->index;
	struct i2c_client *client = FUNC7(dev);
	struct lm93_data *data = FUNC1(client);
	u32 val = FUNC6(buf, NULL, 10);
	u8 ctl2;

	FUNC4(&data->update_lock);
	ctl2 = FUNC2(client,FUNC0(nr,LM93_PWM_CTL2));

	switch (val) {
	case 0:
		ctl2 |= 0xF1; /* enable manual override, set PWM to max */
		break;
	case 1: ctl2 |= 0x01; /* enable manual override */
		break;
	case 2: ctl2 &= ~0x01; /* disable manual override */
		break;
	default:
		FUNC5(&data->update_lock);
		return -EINVAL;
	}

	FUNC3(client,FUNC0(nr,LM93_PWM_CTL2),ctl2);
	FUNC5(&data->update_lock);
	return count;
}